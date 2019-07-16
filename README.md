# Swift-Fundamentals-2
Swift Fundamentals 2 - Custom Initializers, Custom Types, Method vs Function, Optionals, Value vs Reference Types

## Custom Initializers
```Swift
struct Ticket {
    var name: String
}

var ticket = Ticket(name: "Bob")

var ticketCopy = ticket

print(ticket.name)
print(ticketCopy.name)

ticketCopy.name = "Sue"
print("ticket: \(ticket.name)")
print("ticketCopy: \(ticketCopy.name)")

func changeTicketName(ticket: Ticket) {
    var updatedTicket = ticket
    updatedTicket.name = "John"
    print("updatedTicket: \(updatedTicket.name)")
}

print("Ticket: \(ticket.name)")
changeTicketName(ticket: ticket)
print("Ticket: \(ticket.name)")


class City {
    var name: String
    var population: Int
    
    init(name: String, population: Int){
        self.name = name
        self.population = population
    }
}


let orlando = City(name: "Orlando, FL", population: 280_257)

let orl = orlando
orl.name = "ORL"

print("orlando: \(orlando.name)")
print("orl: \(orl.name)")

func increasePopulation(city: City) {
    city.population = city.population + 1
}

print("orlando: \(orlando.population)")
increasePopulation(city: orlando)
print("orlando: \(orlando.population)")
```
## Custom Types
```Swift
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

class Person {
    var age: Int // instance variables
    var name: String
    
    init(age: Int,
         name: String) {
        self.age = age
        self.name = name
    }
    func changeName(name: String) {
        self.name = name
    }
}

var thomas = Person(age: 27, name: "Thomas")

thomas.changeName(name: "Jimmy")

print(thomas.name)



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
```
## Method Vs. Function
```Swift
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
```
## Optionals
```Swift
var myCar: String?

myCar = "Honda Civic"
myCar = nil
myCar = "Ford Mustang"
myCar = nil
myCar = "Tesla Model X"
myCar = nil

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
```
## Values Vs. Reference Types
```Swift
struct Ticket {
    var name: String
}

var ticket = Ticket(name: "Bob")

var ticketCopy = ticket

print(ticket.name)
print(ticketCopy.name)

ticketCopy.name = "Sue"
print("ticket: \(ticket.name)")
print("ticketCopy: \(ticketCopy.name)")

func changeTicketName(ticket: Ticket) {
    var updatedTicket = ticket
    updatedTicket.name = "John"
    print("updatedTicket: \(updatedTicket.name)")
}

print("Ticket: \(ticket.name)")
changeTicketName(ticket: ticket)
print("Ticket: \(ticket.name)")


class City {
    var name: String
    var population: Int
    
    init(name: String, population: Int){
        self.name = name
        self.population = population
    }
}


let orlando = City(name: "Orlando, FL", population: 280_257)

let orl = orlando
orl.name = "ORL"

print("orlando: \(orlando.name)")
print("orl: \(orl.name)")

func increasePopulation(city: City) {
    city.population = city.population + 1
}

print("orlando: \(orlando.population)")
increasePopulation(city: orlando)
print("orlando: \(orlando.population)")
```
