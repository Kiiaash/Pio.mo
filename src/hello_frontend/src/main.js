import { hello, hello_backend } from "../../declarations/hello_backend/hello_backend.did";

document.addEventListener('load', () => {
    let title = document.getElementById('add');
    title.addEventListener('click', () => {
        let a = hello_backend.Add(5, 10);
        console.log('it works');
    });
})