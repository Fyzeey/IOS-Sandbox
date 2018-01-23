// ==========Car.swift==========
// Declare Car class
import Foundation
// enum is used to create customized data type
// we usually put it at the beginning after importing
enum CarType {
    case Sedan
    case Coupe
    case Hatchback
}

class Car {
    
    var colour : String = "Black"
    var numberOfSeats : Int = 5
    var typeOfCar : CarType = .Coupe
    
    //When no argunment is given, colour is black by default
    init() {
    }
    
    //When argunement is given, colour is changed to whatever is given
    convenience init(customerChosenColour: String) {
        self.init()
        colour = customerChosenColour
    }
    
    func drive() {
        print("Car is moving")
    }
}

// ==========SelfDrivingCar.swift==========
import Foundation

// SelfDrivingCar is inherit from class Car
class SelfDrivingCar : Car {
    
    // A property of SelfDrivingCar class
    // ? means option, variable destination can be nil or not nil
    var destination : String?
    
    // We want to expand the capibility of drive() function of SelfDrivingCar class.
    override func drive() {
        // Keep all the capbility of drive() function from Car class
        super.drive()
        
        // Extra capibility we need only for SelfDrivingCar class
        // The if statement checks if destination is nil. --> option bind
        // We can also just print(" Driving towards " + destination!) --> forced unwrap (Dangerous)
        // The "!" basically convert String? into String.
        if let myDestination = destination {
            print ("Driving towards " + myDestination)
        }     
    }
}

// ==========main.swift==========
import Foundation

// Create an object myCar use class Car as blueprint, default setting using init()
let myCar = Car()

// Create an object mySelfDrivingCar use class SelfDrivingCar as blueprint, default setting using init()
let mySelfDrivingCar = SelfDrivingCar()

// Create an object someRichGuysCar use class Car as blueprint, colour is customized using convinient init()
let someRichGuysCar = Car(customerChosenColour: "Gold")

// The drive() method of myCar(type: class Car)
myCar.drive()

// The drive() method(with extra capbility) of mySelfDrivingCar(type: class SelfDrivingCar)
mySelfDrivingCar.drive()

