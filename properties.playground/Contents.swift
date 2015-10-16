// properties

import UIKit

class Legs {
    var count: Int = 0
}

class Animal {
    var name: String = ""
    var legs: Legs = Legs()
    
    // computed property
    var uppercaseName: String {
        get {
            return name.uppercaseString
        }
        set {
            name = newValue
        }
    }
}

// weak doesn't increment # of references
// weak and strong deals with ownership, strong by default
class LegVet {
    weak var legs: Legs? = nil
}

// allocation/deallocation happens via reference count
// here a reference of Animal is created
// as well as a reference of Legs
let dog = Animal()
// once this is deallocated so is the Legs

let vet = LegVet()
vet.legs = dog.legs

// encapsulation
// private (in file only), public, and protected (default; only module can see it)


