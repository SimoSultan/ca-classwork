// Write a method, toVaporwave that takes a string as a argument and 
// returns the string with a space between each letter. 
// Individual words should have two spaces between them.
// Yes, vapor text is just unnecessarily-spaced text.
toVaporwave = (str) => {
  // console.log(str.split('').map(x => x.trim()).join(' '))
  return str.split('').map(x => x.trim()).join(' ')
}


toVaporwave('aesthetic')
word = toVaporwave('Hello World!')

// console.log(word[8]);
// console.log(word[9]);
// console.log(word[10]);
// console.log(word[11]);