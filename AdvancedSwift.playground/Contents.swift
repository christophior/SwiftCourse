//: Playground - noun: a place where people can play

import UIKit

var maybeString: String? = nil

if maybeString != nil {
    maybeString!.characters.count
}

// optional binding
if let definetlyString = maybeString {
    definetlyString.characters.count
} else {
    print("It's nil!")
}

// guards let you use optional binding and stay in the same scope
guard let string = maybeString else { }

// unwrapping is taking something out of an optional (making String? a String; done with !)

// implicit optional: can use as non-optional, auto unwraps
var mostLikelyString: String! = "Hi"

// when you deal w/ obj-C everything is an optional