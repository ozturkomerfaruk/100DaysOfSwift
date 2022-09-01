import Cocoa

var name = "Ömer Faruk"
var age: Int = 25
var latitude: Double = 36.16667
var longitude: Float = -86.783333
var missABeat: Bool = true

var a = 10
a = a * a

var c = a * 2
c > a + a

"Your name is \(name)"

var songs = ["Shake it Off", "You Belong with me"]
songs[0]
songs[1]

type(of: songs)

var singers: [String] = ["Alan Walker", "Linkin Park"]

var numbers: [Any] = [1,2,3,4,5]
type(of: numbers)
numbers[4]

var person = [
    "name": "Taylor",
    "surname": "Swift"
]

person["name"]

var action: String
var personN = "hater"

if personN == "hater" {
    action = "hate"
} else {
    action = "love"
}

for _ in 1...5 {
    print("I love you")
}
    

var peopleLoop = ["players", "haters", "heart-breakers", "fakers"]
var actionsLoop = ["play", "hate", "break", "fake"]

for i in 0..<peopleLoop.count {
    var str = "\(peopleLoop[i]) gonna"
    
    for _ in 1...5 {
        str += " \(actionsLoop[i])"
    }
    
    print(str)
}

let studioAlbums = 5

switch studioAlbums {
case 0...1:
    print("You're just starting out")

case 2...3:
    print("You're a rising star")

case 4...5:
    print("You're world famous!")

default:
    print("Have you done something new?")
}
