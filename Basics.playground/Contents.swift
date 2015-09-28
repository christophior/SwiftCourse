//: Playground - noun: a place where people can play

import UIKit

let constantString = "I can't be changed"

// is a String and Optional so can hold nil
var str: String? = "Hello, playground"
//str = nil
print(str)

//var counter = 0 // not needed

// 0-9
for counter in 0..<10 {
    //loop doesn't print 2
    guard counter != 2 else { continue }
    
    if counter != 5 {
        print(counter)
    }
}

// Arrays and Dictionaries
var animals = ["chickens", "cows", "ducks"]
var cuteness = [
    "chickens": "somewhat",
    "ducks": "cute",
    "geese": "scary"
]

animals[1] = "geese"
cuteness["ducks"]

for animal in animals {
    cuteness[animal]
}

// Functions
func getAnimalIndex (animal: String, weight: Int = 1) -> Int {
    // Switch statements don't fall through
    switch animal {
        case "chickens":
            return 0 + weight
        case "ducks":
            return 1 + weight
        default:
            return -1 + weight
    }
}

getAnimalIndex("chickens", weight: 15)
getAnimalIndex("ducks")
getAnimalIndex("geese", weight: 32)



