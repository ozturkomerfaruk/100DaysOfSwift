import Cocoa

//Basic Closure
let driving = {
    print("I'm driving in my car")
}

driving()

//Closure with Params
let paramClosure = { (place: String) in
    print("I'm going to \(place) in my car")
}

paramClosure("Ankara")

//Closure with Return
let returnClosure = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

print(returnClosure("İstanbul"))

//Closures as parameters
let asParameters = {
    print("I'm a parameter")
}

func travel (action: () -> Void) {
    print("I'm getting ready to go")
    action()
    print("I arrived!")
}

travel(action: asParameters)

print("---------")

//Trailing closure syntax

func trailingClosure (actions: () -> Void) {
    print("1. sentence")
    actions()
    print("2. sentence")
}

trailingClosure {
    print ("I'm impeaccable person")
}

