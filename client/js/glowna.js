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
        document.location.href = 'produkt.html?id=21'
    })
    trzeci.addEventListener('click', ()=>   {
        document.location.href = 'produkt.html?id=11'
    })
    czwarty.addEventListener('click', ()=>   {
        document.location.href = 'produkt.html?id=6'
    })
    piąty.addEventListener('click', ()=>   {
        document.location.href = 'produkt.html?id=16'
    })