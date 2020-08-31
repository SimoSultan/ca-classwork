function orderTotal(order, options = {salesTax: 0.1, shipping: 15}) { 
   
  let total = 0
  let {salesTax, shipping} = options

  for (let i = 0; i < order.length; i++) {
    const item = order[i];
    total += Math.round(item.qty * item.price * (1+salesTax))
  }

  return (total > 200) ? total : total + shipping
}

module.exports = orderTotal;

// const order = [
//   {name: "jar of coffee", qty:2, price: 15},
//   {name:" packet of teabags", qty: 3, price: 8}
//   ]//another example passing custom options 


// // const order = [{name: "cup of coffee", qty: 100, price: 1}]

// // orderTotal(order, {salesTax: 0.2, shipping: 20}) // returns 140
// // console.log(orderTotal(order));
// console.log(orderTotal(order, {salesTax: 0.2, shipping: 20}));