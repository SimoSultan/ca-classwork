const promise1 = new Promise((resolve, reject) => {
    
  let something = true
  // We are setting a mini time out to simulate the 'Pending' status of the Promise
  setTimeout(() => {
      if(something == true){
        resolve('Promise resolved')
      } else {
        reject('Promise is rejected')
      }
  }, 300)
  
});

promise1
  .then(function(fromResolve){
    console.log('Resolved Promise: ',fromResolve);
  })
  .catch(function (fromReject) { 
    console.log('Rejected Promise: ',fromReject); 
  });

console.log('Console.log of the Promise:', promise1);