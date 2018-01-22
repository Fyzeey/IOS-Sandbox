// enum is used to create customized data type
// we usually put it at the beginning after importing

import Foundation

// CarType is the datatype we created
enum CarType {
    case Sedan
    case Coupe
    case Hatchback
}

class Car {
    
    var colour : String = "Black"
    var numberOfSeats : Int = 5
    // variable typeOfCar has data type CarType
    var typeOfCar : CarType = .Coupe
}
