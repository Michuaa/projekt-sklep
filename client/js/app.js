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
        document.location.href = 'produkt.html?id=2'
    })
    trzeci.addEventListener('click', ()=>   {
        document.location.href = 'produkt.html?id=3'
    })
    czwarty.addEventListener('click', ()=>   {
        document.location.href = 'produkt.html?id=4'
    })
    piąty.addEventListener('click', ()=>   {
        document.location.href = 'produkt.html?id=5'
    })