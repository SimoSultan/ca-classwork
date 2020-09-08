function placeOfOrigin(data) {

  let arr = []

  // for (const obj of data) {
  //   if (obj.hasOwnProperty('city'))
  //     arr.push(`The city of ${obj.city} is home to ${obj.name}`)
  //   else
  //     arr.push(`The country of ${obj.country} is home to ${obj.name}`)  
  // }

  for (const obj of data) {
    obj.hasOwnProperty('city') && arr.push(`The city of ${obj.city} is home to ${obj.name}`)
    obj.hasOwnProperty('country') && arr.push(`The country of ${obj.country} is home to ${obj.name}`)
  }

  return arr
}


module.exports = {
  placeOfOrigin,
};



const arr = [
  {
    name: 'Johannes Gutenberg',
    city: 'Mainz',
  },
  {
    name: 'Bi Sheng',
    country: 'China',
  },
]


console.log(placeOfOrigin(arr));
