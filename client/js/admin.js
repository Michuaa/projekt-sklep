async function getdata() {
    const resp = await fetch(`http://localhost:3000/zamowienia`);
    const data = await resp.json(); 
    return data;
}
async function deleteData(id) {
    const resp = await fetch(`http://localhost:3000/zamowienia/${id}`, {
        method: 'DELETE'
    });
    const data = await resp.text(); 
}

getdata().then(data => {
    const table = document.querySelector('#table');
 
    const row = table.insertRow(0);
    const th1 = row.insertCell(0);
    const th2 = row.insertCell(1);
    const th3 = row.insertCell(2);
    const th4 = row.insertCell(3);
    const p = document.querySelector('#suma');
    let suma = 0;
 
    th1.textContent = 'ID_Zamowienia';
    th2.textContent = 'Data';
    th3.textContent = 'Cena';
    th4.textContent = 'Akcja'; 

    data.forEach(przedmiot => {
        const row = table.insertRow();
        const cell1 = row.insertCell(0);
        const cell2 = row.insertCell(1);
        const cell3 = row.insertCell(2);
        const cell4 = row.insertCell(3); 
        cell1.textContent = przedmiot.Id_zamowienia;
        cell2.textContent = `${String(przedmiot.data_zamowienia).slice(0, 4)}-${String(przedmiot.data_zamowienia).slice(4, 6)}-${String(przedmiot.data_zamowienia).slice(6)}`;
        cell3.textContent = przedmiot.Cena;

        const deleteButton = document.createElement('button');
        deleteButton.textContent = 'Usuń';
        deleteButton.addEventListener('click', async () => {
            await deleteData(przedmiot.Id_zamowienia);
            row.remove();
        });
        cell4.appendChild(deleteButton);
    });
});