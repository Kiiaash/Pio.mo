import {hello, hello_backend} from "../../declarations/hello_backend";

let title = document.getElementById('title');
title.addEventListener('click',()=>{
    let a = hello_backend.Mult;
    console.log(a);
});