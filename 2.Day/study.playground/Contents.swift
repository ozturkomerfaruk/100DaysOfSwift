import Cocoa

let john = "John Lennon"
let paul = "Paul McCartey"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]

for (x,y) in beatles.enumerated() {
    print("\(x) -> \(y)")
}

let colors = Set(["red", "green", "blue", "red", "green"])

for i in colors {
    print(i)
}

var name = (first: "Taylor", last: "Swift")

print(name.first)
print(name.1)
//name.last = 2.3 cant change type
print(name.last)


let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")

let set = Set(["aardvark", "astronaut", "azalea"])

let pythons = ["Eric", "Graham", "John", "Micheal", "Terry", "Terry"]


//Dictionaries
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73,
]

let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla",
]
print(favoriteIceCream)

favoriteIceCream["Paul"]

favoriteIceCream["Omer", default: "Unknown"] //if dont here, it will be default




//Dict
var teams = [String: String]()
teams["Paul"] = "Red"
//Array
var results = [Int]()
//Sets
var words = Set<String>()
var numbers = Set<Int>()
//OR if you want
var scores = Dictionary<String, Int>()
var result = Array<Int>()




enum Activity {
    case bored
    case running(isRunning: Bool)
    case talking(String)
    case volume(Int)
}

let talking = Activity.talking("f")
let volume = Activity.volume(502)
let running = Activity.running(isRunning: true)
let bored = Activity.bored

print("\(bored) - \(running) - \(talking) - \(volume)")

//------

enum Planet: Int {
    case mercury
    case venus
    case earth = 10
    case mars
}

Planet.mercury.rawValue
Planet.venus.rawValue
Planet.earth.rawValue
Planet.mars.rawValue
