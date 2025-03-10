const pierwszy = document.querySelector('#pierwszy')
const drugi = document.querySelector('#drugi')
const trzeci = document.querySelector('#trzeci')
const czwarty = document.querySelector('#czwarty')
const piąty = document.querySelector('#piąty')
const szósty = document.querySelector('#szósty')
    pierwszy.addEventListener('click', ()=>   {
        document.location.href = 'produkt.html?id=1'
    })
    drugi.addEventListener('click', ()=>   {
        document.location.href = 'karta2.html'
    })
    trzeci.addEventListener('click', ()=>   {
        document.location.href = 'karta3.html'
    })
    czwarty.addEventListener('click', ()=>   {
        document.location.href = 'karta4.html'
    })
    piąty.addEventListener('click', ()=>   {
        document.location.href = 'karta5.html'
    })
    szósty.addEventListener('click', ()=>   {
        document.location.href = 'karta6.html'
    })