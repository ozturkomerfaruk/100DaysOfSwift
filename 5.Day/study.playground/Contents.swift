import Cocoa

func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and \
MyApp will resize them all into thumbnails
"""
    
    
    print(message)
}

printHelp()

print("---------------------")

func square(number: Int) {
    print(number * number)
}

square(number: 9)

func cube(number: Int) -> Int {
    return number * number * number
}

print(cube(number: 5))

func sayHello(to name: String) {
    print ("Hello, \(name)!")
}

sayHello(to: "Omer Faruk")




func greet(_ person: String) {
    print("Hello, \(person)!")
}

greet("Omer")


func defaultParam(_ person: String, _ isWorking: Bool = true) {
    if isWorking == true {
        print("\(person) is working now")
    } else {
        print("\(person) is not working now")
    }
}

defaultParam("Omer")
defaultParam("Omer", false)

print("-------------------")

print("Omer" , "Faruk", "Ozturk")

func squareParam(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

squareParam(numbers: 1,2,3,4,5,6,7)

print("-------------------")

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}

do {
    try checkPassword("password")
        print("That password is good!")
    } catch {
        print("You can't use that password!")
}


print("-------------------")
//How to use Inout

func doubleInPlace(number: inout Int){
    number *= 2
}

var myNum = 10
doubleInPlace(number: &myNum)
