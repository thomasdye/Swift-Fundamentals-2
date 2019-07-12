//: [Previous](@previous)

enum RoastLevel: String {
    case light // "light"
    case medium // "medium"
    case dark // "dark"
}

struct Coffee {
    let name: String
    let region: String
    let roastLevel: RoastLevel
}

func displayCoffee(coffee: Coffee) {
    print("Today's \(coffee.roastLevel.rawValue) roast coffee is \(coffee.name) from \(coffee.region)")
}

let myCoffee = Coffee(name: "Monday Sunshine",
                      region: "Colubia",
                      roastLevel: .medium)

displayCoffee(coffee: myCoffee)

//: [Next](@next)
