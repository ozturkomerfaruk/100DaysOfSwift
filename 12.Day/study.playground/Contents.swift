import Cocoa
print("-----Handling Miss Data-----")
var age: Int? = nil
age = 38
print("-----Unwrapping optionals------")
var name: String? = nil

if let unwrapped = name {
    print("\(unwrapped.count) letters")
} else {
    print("Missing name.")
}

func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }
    
    print("Hello, \(unwrapped)!")
}

print("-----Force unwrapping------")
let str = "5"
let num = Int(str)!

print("-----implicitly unwrapped optionals-----")
let height: Int! = nil


print("-----Nil Coalescing------")
func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}
let user = username(for: 15) ?? "Anonymous"


print("-----Optional Chaning------")
let objects = ["Ömer", "Faruk", "Öztürk", "MacBook", "GüzelBir", "Şey", "Dedi"]
let ob = objects.first?.uppercased()
