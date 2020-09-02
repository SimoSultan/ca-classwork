class Person {
  
  static count = 0

  constructor(name, city) {
    this.name = name
    this._city = city
    // this.city = city
    Person.count++
  }

  aboutPerson() {
    console.log('');
    return `Person's name is ${this.name} and they are from ${this._city}`
    // return `Person's name is ${this.name} and they are from ${this.city}`
  }

  get city() {
    console.log('');
    return `this gets called when we call the property of the object`
  }

  // set city() {

  }

  // ignore this
  // getCity() {
  //   console.log('');
  //   return `getCity string ${this.city}`
  //   // return `getCity string`
  // }

  speak() {
    console.log('');
    return `Hello my name is ${this.name}`
  }

}




class Teacher extends Person {
  
  static count = 0
  
  constructor(name, city, classesTeaching) {
    super(name,city)
    this.classesTeaching = classesTeaching
    Teacher.count++
  }

  aboutPerson() {
    let person = super.aboutPerson()
    return `${person} and teaches ${this.classesTeaching}`
  }

  // ignore this
  test() {
    console.log(`person inside teacher ${Person.count}`);
  }

}



class Student extends Person {

  static count = 0
  
  constructor(name, city, classesStudying) {
    super(name, city)
    this.classesStudying = classesStudying
    Student.count++
  }

  aboutPerson() {
    let person = super.aboutPerson()
    return `${person} and studies ${this.classesStudying}`
  }

  // ignore this
  // getCity() {
  //   return super.getCity()
  // }

}

let flitwick = new Teacher("Flitwick", "Smallpersonsville", "Charms")
let harry = new Student("Harry", "London", "Defence Against the Dark Arts")

console.log(flitwick.aboutPerson());
console.log(harry.aboutPerson());
console.log(harry.getCity());
// console.log(harry.city);
console.log(harry.speak());

console.log(flitwick);
console.log(harry);

flitwick.test()

console.log(`Person count is ${Person.count}`);
console.log(`Teacher count is ${Teacher.count}`);
console.log(`Student count is ${Student.count}`);
console.log('');