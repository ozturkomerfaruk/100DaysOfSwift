import Cocoa

let first = 12
let second = 4

let total = first + second
let diff = first - second
let prod = first * second
let div = first / second
let rem = first % second

//operator overloading
let meaninOfLife = 42
let doubleMeaning = 42 + 42
let fakers = "Fakers gonna "
let action = fakers + "fake"

let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf

var score = 95
score -= 5
var quote = "The rain Spain falls mainly on the "
quote += "Spaniards"

let firstScore = 6
let secondScore = 4

firstScore >= secondScore ? firstScore : secondScore
//== != < >= At the same time, We can use it in String

//---------

let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 21 {
    print("Blackjack!")
} else if firstCard + secondCard >= 20 {
    print("Wow")
} else {
    print("Regular Cards")
}

if firstCard == 11 && firstCard + secondCard == 21 {
    print("Perfectto!!")
} else {
    print("Dont be sad")
}

//------

let weather = "sunny"

switch weather {
case "rain":
    print("Bring an umbrealla")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
default:
    print("Enjoy your day!")
}



let highScore = 85

switch highScore {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}
