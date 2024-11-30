import { hello_backend } from "../../declarations/hello_backend";

const holder = document.getElementById('holder');
console.log('it is ready');
let button = document.getElementById('show');
button.addEventListener('click', async function () {
    let a = await hello_backend.callb();
    let b = await hello_backend.nullifier(a);
    const holder = document.getElementById('holder');
    holder.textContent = a;
});

let add = document.getElementById('add');
add.addEventListener('click', async () => {
    let holder = document.getElementById('holder');
    let result = await hello_backend.addTob();
    let again = await hello_backend.callb();
    holder.textContent = again;
})
let addup = document.getElementById('form1');
addup.addEventListener('submit',async (event)=>{
    event.preventDefault();
    let first = Number(document.getElementById('first').value);
    let second = Number(document.getElementById('second').value);
    let result = await hello_backend.Add(first,second);
    console.log(result);
    holder.textContent = result;
})