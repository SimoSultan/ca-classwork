const dataString = require('./data.json');

class Weather {
  
  constructor(data) {
    // this.data = JSON.parse(dataString)
    this.data = data
  }

  maxTemps() {
    let { consolidated_weather } =  this.data
    return consolidated_weather.map(elem => elem.max_temp)
  }

  averageTemp() {
    let { consolidated_weather } =  this.data
    let temps = []
    consolidated_weather.forEach(elem => temps.push(elem.the_temp))
    let av = temps.reduce((acc,val) => acc + val, 0) / temps.length
    return av.toFixed(2)
  }

  forcast(day) {

    let { consolidated_weather } =  this.data
    let dayObj = consolidated_weather.filter((elem) => elem.applicable_date.includes(day))[0]
    if (dayObj == undefined) return "No information for that day"
    let the_temp = dayObj.the_temp.toFixed(2)
    let max = dayObj.max_temp.toFixed(2)
    let min = dayObj.min_temp.toFixed(2)
    return `The temperature was ${the_temp} degrees with a high of ${max} and a low of ${min}.`
  }
}

let weather = new Weather(dataString)
let maxTemps = weather.maxTemps()
let averageTemp = weather.averageTemp()
let day = weather.forcast('2020-05-26')

console.log(weather);
console.log('');
console.log(maxTemps);
console.log('');
console.log(averageTemp);
console.log('');
console.log(day);
console.log('');