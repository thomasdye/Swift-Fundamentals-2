//: [Previous](@previous)

class Vacuum {
    var isOn: Bool
    var isPluggedIn: Bool
    var rugHeight: Int
    var isSelfDriving: Bool
    var attachments: [String]
    
    init(isSelfDriving: Bool = false, attachments: [String] = []) {
        isOn = false
        isPluggedIn = false
        rugHeight = 5 // 1 - 10 mm
        self.isSelfDriving = isSelfDriving
        self.attachments = attachments
    }
}

let sharkVacuum = Vacuum(isSelfDriving: false,
                         attachments: ["Dusting Brush", "Crevice Tool"])

let roombaVacuum = Vacuum(isSelfDriving: true)

//: [Next](@next)
