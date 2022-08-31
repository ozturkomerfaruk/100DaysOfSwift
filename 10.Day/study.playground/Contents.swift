import Cocoa

class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
    
    func makeNoise() {
        print("Woof!")
    }
}

let poppy = Dog(name: "Poppy", breed: "Poodle")

class Poodle : Dog {
//    Inheritebce
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
    
    override func makeNoise() {
        print("Yip")
    }
}

let poodle = Poodle(name: "name")
poodle.name
poodle.breed


let doddy = Poodle(name: "Doddy")
doddy.makeNoise()


final class Human {
    var name: String
    var age: String
    
    init(name: String, age: String) {
        self.name = name
        self.age = age
    }
}


//Copying Object
class Singer {
    var name = "Kerim Yağcı"
    var song = "Gönlüm Ataşlara Yandı Gidiyor"
}

var singer = Singer()
print("\(singer.name) -> \(singer.song)")

var singerCopy = singer
singerCopy.name = "Orhan Hakalmaz"

print(singer.name)

//Deinitializers
class Person {
    var name = "John Doe"
    
    init() {
        print("\(name) is alive!")
    }
    
    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    
    deinit {
        print("\(name) is no more!")
    }
}

for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}

class Omer {
    var name = "Omer Faruk Ozturk"
}

let omer = Omer()
omer.name = "Ömer Faruk Öztürk"
print(omer.name)
