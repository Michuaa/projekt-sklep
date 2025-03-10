var url = window.location;
let params = new URLSearchParams(url.search);
let id = params.get("id");

console.log(id);

async function Getdata() {
  const resp = await fetch(`http://localhost:3000/produkt/${id}`);
  const data = await resp.json(); 
  return data;
}

Getdata().then((data) => {
  const v1 = document.querySelector("#value1");
  const v2 = document.querySelector("#value2");
  const v3 = document.querySelector("#value3");
  const cena = document.querySelector("#cena");
  const img = document.querySelector("#img");

  data.forEach((produkt) => {
    v1.textContent = produkt.nazwa;
    cena.textContent = produkt.cena + " PLN";


    if (produkt.pamiec !== null && produkt.uklad !== null) {
      v2.textContent = produkt.pamiec;
      v3.textContent = produkt.uklad;
    } else if (produkt.hz !== null && produkt.rozmiar !== null) {
      v2.textContent = produkt.hz + " Hz";
      v3.textContent = produkt.rozmiar;
    } else if (produkt.procesor !== null && produkt.ram !== null) {
      v2.textContent = produkt.procesor;
      v3.textContent = produkt.ram + " GB RAM";
    } else if (produkt.dpi !== null && produkt.lp !== null) {
      v2.textContent = produkt.dpi + " DPI";
      v3.textContent = produkt.lp;
    } else if (produkt.numpad !== null && produkt.dlugosc !== null) {
      v2.textContent = "Numpad: " + produkt.numpad;
      v3.textContent = "Długość: " + produkt.dlugosc;
    } else {
      v2.textContent = "Brak danych";
      v3.textContent = "Brak danych";
    }


    img.src = produkt.zdjecie ? produkt.zdjecie : "default.jpg";
  });
});
