import Cocoa

struct User {
    var username: String
    
    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}

var user = User()
user.username = "ozturkomerfaruk"
user.username


struct Person {
    var name: String
    
    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}

print("----------------")

struct FamilyTree {
    init() {
        print("Creating family tree!!")
    }
}

struct FamilyPerson {
    var name: String
    var familyTree = FamilyTree()
    
    init(name: String) {
        self.name = name
    }
}

var omer = FamilyPerson(name: "Ömer")
omer.familyTree.self

print("----------------")

struct Student {
    static var classSize = 0
    var name: String

    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}

let ed = Student(name: "Ömer")
let taylor = Student(name: "Faruk")
print(Student.classSize)

print("----------------")

struct Employee {
    private var id: String
    
    init(id: String) {
        self.id = id
    }
    
    public func identify() -> String {
        return "My social security number is \(self.id)"
    }
}

let omerFaruk = Employee(id: "12345")
omerFaruk.identify()
