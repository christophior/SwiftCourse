// cheat sheet

import UIKit

// classes (inheritance and overriding)

// SuperNumber is subclass of NSNumber
class SuperNumber: NSNumber {
    override func getValue(value: UnsafeMutablePointer<Void>) {
        super.getValue(value)
    }
}

// extend class
extension  NSNumber {
    func superCoolGetter() -> Int {
        return 5
    }
}

let n = NSNumber(int: 4)
n.superCoolGetter()

// protocols (like an interface to a class)
protocol dancable {
    func dance()
}

// must have dance to be dancable
class person: dancable {
    func dance() {
        
    }
}
// can also make extension dancable

// enums
enum TypesOfVeggies : String {
    case Carrots
    case Tomatoes
    case Celery
}

let carrot = TypesOfVeggies.Carrots
carrot.rawValue

func eatVeggies(veggie: TypesOfVeggies) {
    
}

// Returns Carrots of type TypesOfVeggies
let randomVeggies = TypesOfVeggies(rawValue: "Carrots")
// Returns nil
let randomVeggiesDos = TypesOfVeggies(rawValue: "Lead")
eatVeggies(TypesOfVeggies.Carrots)


// initializers
class Car {
    var cupHolder: String
    
    required init(cupHolder: String) {
        self.cupHolder = cupHolder
    }
    
    convenience init() {
        self.init(cupHolder: "Cool")
    }
    
    deinit {
        
    }
}

let car = Car(cupHolder: "Cool")
let newCar = Car()

// convenient must call required, subclass init must call super.init


// generics
// using <element> to be genetric

// operator overloading
// overload operators for objects so they do what you want


