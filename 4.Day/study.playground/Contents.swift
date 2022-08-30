import Cocoa

let count = 1...10

for number in count {
    print("Number is \(number)")
}

for _ in 1...5 {
    print("play")
}

var i: Int = 1;

while i <= 5 {
    print(i)
    i += 1
}
print("--------")
var asd = 1

repeat {
    print(asd)
    asd += 1
} while asd <= 9
print("Ready or not, here I come!..")

repeat {
    print("This is false")
} while false

//Exiting Loops

var countDown = 10

while countDown > 1 {
    print(countDown)
    countDown -= 1
    if countDown == 4 {
        print("I'm bored. Let's go now")
        break
    }
}
print("Blast off!")

for i in 1...5 {
    for j in 1...5 {
        let product = i * j
        print("\(i) * \(j) => \(product)")
    }
}

print("-------------------")

for i in 1...10 {
    if i % 2 == 1 {
        continue
    }
    print(i)
}

print("-------------------")

var counter = 0

while true {
    print (counter)
    counter += 1
    
    if counter == 13 {
        break
    }
}
