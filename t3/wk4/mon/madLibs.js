// get the elements
// create a ul element
let form = document.getElementById(`awesomeFormName`)
let ul = document.createElement('ul')
ul.setAttribute('id', "list")
let dynamic = document.getElementById('dynamic')

// add the ul to the body
document.body.appendChild(ul)
let list = document.getElementById('list')


function myFunc(event){

  // stop the form from submitting
  // create a list element and get the input element
  event.preventDefault()
  let li = document.createElement('li')
  let input = document.getElementById('field1')

  // if the input is empty, give them a warning
  // otherwise add the word to the string and the list
  // add an event listener to the word and if it is clicked, warn them if they want to delete the word
  // fix the string on deletion of the word
  if (input.value == "") {
    alert("Please enter a word to submit")
  } else {
    li.textContent = input.value
    li.style.listStyle = "none"
    li.style.cursor = "pointer"
    li.addEventListener('click', () => {
      if (confirm("Are you sure you want to remove this adjective?"))
        dynamic.textContent = (li.previousSibling === null) ? "dynamic" : li.previousSibling.textContent
        li.remove()
    })
    list.appendChild(li)
  }

  // set the value of the string to the word received from the input
  // reset the input to empty
  dynamic.textContent = input.value
  input.value = "" 
}