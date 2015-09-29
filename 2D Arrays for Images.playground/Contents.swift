//: Playground - noun: a place where people can play

import UIKit

var beautifulImage = [
    [3, 15, 3],
    [26, 3, 4],
    [14, 8, 22]
]

// inout means that we're passing by reference, actually changes passed in variable
func raiseLowerNumbers(inout inImage image: [[Int]], to number: Int) {
    for row in 0..<image.count {
        for column in 0..<image[row].count {
            if image[row][column] < number {
                image[row][column] = number
            }
        }
    }
}

raiseLowerNumbers(inImage:&beautifulImage, to: 15)
