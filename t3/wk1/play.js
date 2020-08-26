

students = [
  {name: 'Arry Potta', wam: 70, desc: 'yer a lizard harry'},
  {name: 'Bobby Brown', wam: 95, desc: 'hey there folks, im bobby brown'},
  {name: 'Cam Awesome', wam: 100, desc: 'The taylor swift of boxing'},
  {name: 'Hodor', wam: 49, desc: 'hodor hodor hodor, god season 8 was trash'},
  {name: 'Bran Stark', wam: 1, desc: 'Kid looks like caligula, I do not trust him'}
]

// let [,{ name }] = students;
// let [1: { wam }] = students;
// console.log(name);
// console.log(name);

// for (let i = 0; i < 3; i++) {
//   console.log(students[i].desc);
// }

// for (const key in students) {
//   if (students.hasOwnProperty(key)) {
//     const element = students[key];
//     console.log(`${key} = `)
    
//   }
// }

// for (const student of students) {
//   console.log(student.desc);
// }


console.log(students.reduce((acc, student) => acc + student.wam, 0))