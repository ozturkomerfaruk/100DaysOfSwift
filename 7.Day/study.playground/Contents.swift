//import Cocoa
//
////without shorthand
//let groceries = ["milk", "eggs", "butter", "flowers"]
//let uppercasedGroceries = groceries.map { item -> String in
//    item.uppercased()
//}
//
////with shorthand
//let uppercasedGroceriesWithShorthand = groceries.map{
//    $0.uppercased()
//}
//
////Multiple param
//func travelShorthand(action: (String, Int) -> String) {
//    print("I'm getting readt to go.")
//    let description = action("Kırşehir", 40)
//    print(description)
//    print("I arrived!")
//}
//
//travelShorthand {
//    "I'm going to \($0) at \($1) miles per hour."
//}

//Returning closures from functions
func travel() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result = travel()
result("Aydın")

let result2: Void = travel()("Ankara")

//Capturing values
func travelCap() -> (String) -> Void {
    
    var counter = 1
    
    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}

let resultCap = travelCap()
resultCap("London")
resultCap("London")
resultCap("London")
resultCap("London")
