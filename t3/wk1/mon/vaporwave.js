toVaporwave = (str) => {
  // console.log(str.split('').map(x => x.trim()).join(' '))
  return str.split('').map(x => x.trim()).join(' ')
}


toVaporwave('aesthetic')
word = toVaporwave('Hello World!')