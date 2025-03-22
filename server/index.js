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
app.listen(3000, ()=>{
    console.log('Działa')
})
app.get('/koszyk', (req,res) =>{
    const sql2= `SELECT * FROM koszyk`
})