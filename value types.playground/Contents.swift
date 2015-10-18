// value types

import UIKit

var a = 3
var b = a

b = 5
// a should equal 3
a

class numberClass {
    var n: Int
    init(n: Int) {
        self.n = n
    }
}


// assigning classes is reference assignment
var aNumberC = numberClass(n: 3)
var bNumberC = aNumberC

bNumberC.n = 5

// both the same
bNumberC.n
aNumberC.n

/*********************************************/
 // structs are like classes but value types
struct numberStruct {
    var n: Int
    init(n: Int) {
        self.n = n
    }
}

// get your own copy
var aNumberS = numberStruct(n: 3)
var bNumberS = aNumberS

bNumberS.n = 5

// both are different
bNumberS.n
aNumberS.n