

const rps = (player1, player2) => {

  player1 = player1.toLowerCase();
  player2 = player2.toLowerCase();

  if (player1 === player2) {
    return "It's a draw"
  }

  if (player1 === "paper") {
    if (player2 === "rock") {
        return `The winner is Player 1`;
    } else if ((player2 === "scissors")) {
      return `The winner is Player 2`;
    }
  }

  if (player1 === "scissors") {
    if (player2 === "rock") {
      return `The winner is Player 2`;
    } else if (player2 === "paper") {
      return `The winner is Player 1`;
    }
  }

  if (player1 === "rock") {
    if (player2 === "scissors") {
      return `The winner is Player 1`;
    } else if (player2 === "paper") {
      return `The winner is Player 2`;
    }
  }

};

console.log(rps("rock", "paper"));

// Dont't change this!
module.exports = rps;