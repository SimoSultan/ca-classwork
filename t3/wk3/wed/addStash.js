let stash = document.getElementById('stash-pic')

function getClickPosition(e) {
  let x = e.pageX;
  let y = e.pageY;

  stash.style.left = x-stash.width/2 + "px"
  stash.style.top = y-stash.height/2 + "px"
}


document.body.addEventListener('click', getClickPosition, false)
