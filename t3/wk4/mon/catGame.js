
//  Identify the elements
let jump = document.getElementById('jump')
let mvRight = document.getElementById('right')
let mvLeft = document.getElementById('left')
let cat = document.getElementById('cat-pic')
let catBkgound = document.getElementById('cat-bground')
cat.style.left = '50px'

// set the distance we want the cat to move
let distance = 50

// add the event listeners
mvRight.addEventListener('click', () => { moveRight(distance)})
mvLeft.addEventListener("click", () => {moveLeft(distance)})
jump.addEventListener("click", jumpCat)

// get previous location of cat,
// add the distance to it
// reset the property
function moveRight(d) {
  console.log(window.innerWidth);
  let prev = parseInt(cat.style.left)
  let newLoc = ((prev + d) > 1450) ? 0 : prev + d
  cat.style.left = newLoc + "px"
}

// get previous location of cat,
// add the distance to it
// reset the property
function moveLeft(d) {
  let prev = parseInt(cat.style.left)
  let newLoc = ((prev - d) < 0) ? 1450 : prev - d
  cat.style.left = newLoc + "px"
}

// add the bounce class animation to the object
function jumpCat() {
  cat.classList.add('bounce')
  setTimeout(() => cat.classList.remove('bounce'), 1300)
}

// when a key has been pressed, run the function below
document.onkeydown = checkKey;

// check which key was pressed and run the respective function
function checkKey(e) {

  e = e || window.event;

  if (e.keyCode == '38') {
    jumpCat()
  }
  else if (e.keyCode == '37') {
    moveLeft(distance)
  }
  else if (e.keyCode == '39') {
    moveRight(distance)
  }

}