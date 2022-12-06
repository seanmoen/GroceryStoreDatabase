

function updateLetters(){
    let word = document.getElementById("input0").value;

    if (word.length != 5){
        document.getElementById("update0").innerHTML = "Error";
        return;
    }
    word = word.toUpperCase();
    for (let letterPos = 0; letterPos < 5; letterPos++){
        document.getElementById("letter0" + letterPos).innerHTML = word.charAt(letterPos);
    }
}

function updateLetterColor(){
    var letterBox = document.getElementById('letter00')
    letterBox.style.color = '#FF0000';
}

// Call function on click of the button
document.getElementById("update0").onclick = updateLetters;
const words = document.getElementsByClassName("word");
//collection[0].innerHTML = "shrek";

const letters = document.getElementsByClassName("letter");
for (let letter in letters){
    letter.onclick = updateLetterColor;
    letter.style.color = '#FF0000';
}
var letterBox = document.getElementById('letter00')
letterBox.style.background = '#FF0000';

document.body.style.background = "yellow";