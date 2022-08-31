import Cocoa

struct Sport {
    var name: String
    var isOlympicSport: Bool
    
    var olypicStatus: String {
        if isOlympicSport{
            return "\(name) is an Olypic Sport"
        } else {
            return "\(name) is not an Olympic Sport"
        }
    }
}
var tennis = Sport(name: "Tennis", isOlympicSport: false)
print(tennis.name)
//tennis.name = "Lawn tennis" //We can change this
print(tennis.olypicStatus)

//---------------------------------------------------------

struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}

var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100

//---------------------------------------------------------

struct City {
    var population: Int
    
    func collectTaxes() -> Int {
        return population * 1000
    }
}

let london = City(population: 9_000_000)
london.collectTaxes()


//---------------------------------------------------------

struct Person {
    var name: String
    
    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

var person = Person(name: "Faruk")
person.name


//---------------------------------------------------------

let str = "Ömer Faruk Öztürk"

print(str.count)
print(str.hasPrefix("Öm")) //Start with Öm
print(str.uppercased())
print(str.sorted())

var pc = ["Apple"]

print(pc.count)
pc.append("M2Pro")
print(pc.count)
pc.firstIndex(of: "M2Pro")

print(pc.sorted())
pc.remove(at: 0)
print(pc)
