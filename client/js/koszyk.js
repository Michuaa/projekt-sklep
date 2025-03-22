async function getdata() {
    const resp = await fetch(`http://localhost:3000/koszyk`);
    const data = await resp.json(); 
    return data;
  }

getdata().then(data => {
    const table = document.querySelector('#table')
 
    const row = table.insertRow(0)
    const th1 = row.insertCell(0)
    const th2 = row.insertCell(1)
    const th3 = row.insertCell(2)
    const p = document.querySelector('#suma')
    let suma = 0
 
    th1.textContent = 'ID_produktu'
    th2.textContent = 'Nazwa'
    th3.textContent = 'Cena'
 
    data.forEach(przedmiot => {
        const row = table.insertRow()
        const cell1 = row.insertCell(0)
        const cell2 = row.insertCell(1)
        const cell3 = row.insertCell(2)
        cell1.textContent = przedmiot.id_p
        cell2.textContent = przedmiot.produkty
        cell3.textContent = przedmiot.cena
        suma += przedmiot.cena

    })
    cenaCala = parseFloat(suma)
    if (suma == 0) {
        p.textContent = 'Twój koszyk jest pusty'
    }
    else{
    p.textContent = `Suma: ${suma} PLN`
    }
})
document.querySelector('#wyslij').addEventListener('click', async () => {
        const req = await fetch(`http://localhost:3000/wyslij/${cenaCala}`)
        location.reload()
  })
