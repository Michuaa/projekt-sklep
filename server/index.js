const express = require('express')
const cors =  require('cors')
const mysql = require('mysql')
const app = express()
app.use(cors())
const conn = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'sklep'


})
conn.connect((err) => {
    if(err){
        console.log(err)
        return
    } else{
        console.log('Połączono')

    }
})
app.get('/produkt/:id', (req,res) =>{
    const id = req.params.id
    const sql = `SELECT produkty.*, kategoria.*, sprzet.* FROM produkty LEFT JOIN kategoria ON produkty.id_kategorii = kategoria.id_kategori LEFT JOIN sprzet ON produkty.id_sprzetu = sprzet.id_sprzetu WHERE produkty.id = '${id}';`
    conn.query(sql, (err, result) =>{
        if(err){
            console.log(err)
            return
        } else{
            res.send(result)
    
        } 
    })
})
app.get('/koszyk', (req, res) => {
    const sql = "SELECT * FROM koszyk"
    conn.query(sql, (err, data) => {
        if (err) {
            console.log(err)
            res.send("Nie udało się pobrać danych")
        } else {
            res.send(data)
            console.log("Pobrano dane")
        }
    })
})
app.get('/dodaj/:nazwa/:cena', (req, res) => {
    const nazwa = req.params.nazwa
    const cena = req.params.cena
    const sql = "INSERT INTO koszyk (produkty, cena) VALUES (?, ?)"
    conn.query(sql, [nazwa, cena], (err, result) => {
        if (err) {
            console.log(err)
            res.send("Nie udało się dodać przedmiotu")
        } else {
            res.send("produkt dodany pomyślnie")
            console.log("Dodano produkt")
        }
    })
})
app.get('/wyslij/:suma', (req, res) => {
    const suma = parseFloat(req.params.suma);
    const sqlInsert = "INSERT INTO zamowienia (data_zamowienia, Cena) VALUES (CURRENT_DATE, ?)";
    const sqlDelete = "DELETE FROM koszyk";
    conn.query(sqlInsert, [suma], (err, result) => {
        if (err) {
            console.error("Błąd MySQL (insert):", err);
        } else {
            conn.query(sqlDelete, (err, result) => {
                if (err) {
                    console.error("Błąd MySQL (delete):", err);
                } else {
                    res.send("Zamówienie wysłane i koszyk wyczyszczony!");
                    console.log("Wysłano zamówienie i wyczyszczono koszyk");
                }
            });
        }
    });
});
app.get('/zamowienia', (req, res) => {
    const sql = "SELECT * FROM zamowienia"
    conn.query(sql, (err, data) => {
        if (err) {
            console.log(err)
            res.send("Nie udało się pobrać danych")
        } else {
            res.send(data)
            console.log("Pobrano dane")
        }
    })
})
// app.get('/dzamowienia/:id', (req, res) => {
//     const id = req.params.id;
//     const sql = "DELETE FROM zamowienia WHERE Id_zamowienia = ?";
//     conn.query(sql, [id], (err) => {
//         if (err) {
//             console.log(err);
//             res.send("Nie udało się usunąć zamówienia");
//         } else {
//             res.send("Zamówienie usunięte pomyślnie");
//             console.log("Usunięto zamówienie o id:", id);
//         }
//     });
// })
app.delete('/zamowienia/:id', (req, res) => {
    const id = req.params.id;
    const sql = "DELETE FROM zamowienia WHERE Id_zamowienia = ?";

    conn.query(sql, [id], (err, result) => {
        if (err) {
            console.log(err);
            res.status(500).send("Nie udało się usunąć zamówienia");
        } else {
            if (result.affectedRows > 0) {
                res.status(200).send("Zamówienie usunięte pomyślnie");
                console.log("Usunięto zamówienie o id:", id);
            } else {
                res.status(404).send("Zamówienie o podanym id nie zostało znalezione");
            }
        }
    });
});

app.listen(3000, ()=>{
    console.log('Działa')
})