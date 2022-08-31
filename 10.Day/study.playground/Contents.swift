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
