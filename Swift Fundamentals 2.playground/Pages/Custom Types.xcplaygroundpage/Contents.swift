import Foundation

struct Coffee {
    let name: String
    let region: String
    let roastLevel: RoastLevel
}

enum RoastLevel {
    case light
    case medium
    case dark
}

let darkRoast = RoastLevel.dark
let myFavoriteRoast: RoastLevel = .light

let myCoffee = Coffee(name: "Monday Sushine",
                      region: "Columbia",
                      roastLevel: .medium)

print(myCoffee.roastLevel)

class CoffeeShop {
    var name: String
    var city: String
    private (set) var coffees: [Coffee]
    
    init(name: String, city: String) {
        self.name = name
        self.city = city
        coffees = []
    }
    
    func add(coffee: Coffee) {
        coffees.append(coffee)
    }
}

let myShop = CoffeeShop(name: "Happy Coffee",
                        city: "Orlando")

myShop.coffees
myShop.add(coffee: myCoffee)
myShop.coffees

let uglyDuck = CoffeeShop(name: "Ugly Duck",
                          city: "Rochester, NY")

let ethiopian = Coffee(name: "Starbucks",
                       region: "Ethiopia",
                       roastLevel: .dark)

uglyDuck.add(coffee: ethiopian)
uglyDuck.coffees

//: [Next](@next)
