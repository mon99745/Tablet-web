var modal = document.querySelector(".call_popup"); 
var trigger = document.getElementById("trigger"); 
var cancelButton = document.getElementById("#cancel");

//console.log(modal);

function toggleModal() { 
    modal.classList.toggle("show-modal"); 
}

function windowOnClick(event) { 
    if (event.target === modal) { 
        toggleModal(); 
    } 
}

trigger.addEventListener("click", toggleModal); 
cancel.addEventListener("click", toggleModal); 
window.addEventListener("click", windowOnClick); 