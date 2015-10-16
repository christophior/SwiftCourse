// optional chaining

import UIKit

class CupHolder {
    var cups: [String]? = nil
}

class Car {
    var cupHolders: CupHolder? = nil
}

let niceCar = Car()
niceCar.cupHolders = CupHolder()
niceCar.cupHolders?.cups = ["Sprite"]

// putting a "Coke" into a cupholder using optionals
if var cupHolder = niceCar.cupHolders {
    if var cups = cupHolder.cups {
        cups.append("Coke")
    } else {
        cupHolder.cups = ["Coke"]
    }
}

// checking if there's "Coke" in a cupholder using optionals
if let cupHolder = niceCar.cupHolders {
    if let cups = cupHolder.cups {
        if (cups[0] == "Coke"){
            print("Yay")
        } else {
            print("Aww")
        }
    }
}

// doing above using optional chaining
niceCar.cupHolders?.cups?.append("Coke")
let firstCup = niceCar.cupHolders?.cups?[0]


