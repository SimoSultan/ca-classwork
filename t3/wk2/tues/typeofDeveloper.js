
class Developer {

  static count = 0

  constructor(name, devType, languages) {
    this.name = name
    this._devType = devType
    this.languages = languages
    Developer.count++
  }


  greet() {
    return `Hello, I'm ${this.name}`
  }

  // I have just done this extra getting function for knowledge purposes
  // what it does is call this function when we call the property on the instance of the class 
  get devType() {
    return `devType is ${this._devType}`
  }

  about() {
    return `I'm a ${this.devType} that uses ${this.languages[0]}`
  }

}


let devInstance = new Developer("Alex", "gamedev", ["C#","JS"]);
devInstance.greet();
devInstance.about();
console.log(devInstance.devType); 
console.log(`There are currently ${Developer.count} developers!`);


module.exports = {
    Developer: Developer
}