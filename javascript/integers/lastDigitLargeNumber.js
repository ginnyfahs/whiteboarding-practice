function lastDigitLargeNumber(n1, n2) {
  lastDigitn1 = n1 % 10 
  if (lastDigitn1 === 0 ) {
    return 0 
  }
  else if (n2 === 0) {
    return 1 
  } else {
    var cycleOfFour = n2 % 4 
    if (cycleOfFour === 0 ) {
      cycleOfFour = 4
    }
    return Math.pow(lastDigitn1, cycleOfFour) % 10 
  }
}

console.log(lastDigitLargeNumber(1234562304809,12039810293810298))