import Cocoa

protocol Identifiable {
    var id: String {get set}
}

struct User: Identifiable {
    var id: String
}

func displayID(thing: Identifiable) {
    print("My ID is \(thing.id)")
}

print("--------------------")

protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVascation {
    func takeVacation(days: Int)
}

protocol Employee: Payable, NeedsTraining, HasVascation {
    
}

print("-----Extensions-----")

extension Int {
    func squaredExt() -> Int {
        return self * self
    }
    var isEven: Bool {
        return self % 2 == 0
    }
}

let number = 7
number.squaredExt()
number.isEven

print("-----Protocol Extensions-----")

let pythons = ["Eric", "Graham", "John", "Micheal", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

extension Collection {
    func summarize() {
        print("There are \(count) of us:")
        
        for name in self {
            print(name  )
        }
    }
}

pythons.summarize()
beatles.summarize()


print("-----Protocol Oriented Programming-----")

protocol IdentifiableOP {
    var id: String {get set}
    func identify()
}

extension IdentifiableOP {
    func identify() {
        print("My ID is \(id).")
    }
}

struct UserOP: IdentifiableOP {
    var id: String
}

let twostrawsOP = UserOP(id: "twostraws")
twostrawsOP.identify()
