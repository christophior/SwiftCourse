// Closures

import UIKit

func performMagic(thingy: String) -> String {
    return thingy
}

performMagic("Hey")

var magicFunction = performMagic
magicFunction("Hey")

var newMagicFunction = {
    (thingy: String) -> String in
    return thingy
}

var adderFunction: (Int, Int) -> Int = {
    (a: Int, b: Int) -> Int in
    return a + b
}

adderFunction(1, 3)

func doComplicatedStuff(completion:() -> ()) {
    // does crazy stuff
    completion()
}

doComplicatedStuff { doComplicatedStuff() }

