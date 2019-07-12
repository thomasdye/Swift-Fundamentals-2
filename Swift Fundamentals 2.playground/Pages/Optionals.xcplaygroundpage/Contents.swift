//: [Previous](@previous)

var myCar: String?

myCar = "Honda Civic"
myCar = nil
myCar = "Ford Mustang"
myCar = nil
myCar = "Tesla Model X"
myCar = nil

print(myCar)

//let number = Int("97")

//let number = Int("dog")

let subtotalString = "58.95"

if let subtotal = Double(subtotalString) {
    let tip = subtotal * 0.20
    let total = subtotal + tip
    print("Total: \(total)\n\tsubtotal: \(subtotalString)\n\ttip: \(tip)")
} else {
    print("\(subtotalString) is not a valid amount")
}


var yearsOld: Int? = nil

yearsOld = 35
//
//let approximateDaysOld = 365 * yearsOld!
//
//print("Wow! You are \(approximateDaysOld) days old.")

if let yearsOld = yearsOld {
    let approximateDaysOld = 365 * yearsOld // no ! because it's already unwrapped
    print("Wow! You are \(approximateDaysOld) days old")
} else {
    print("You don't have an age")
}


//: [Next](@next)
