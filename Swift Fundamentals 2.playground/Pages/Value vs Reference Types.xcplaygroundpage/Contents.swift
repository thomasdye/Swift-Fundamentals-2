//: [Previous](@previous)

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

//: [Next](@next)
