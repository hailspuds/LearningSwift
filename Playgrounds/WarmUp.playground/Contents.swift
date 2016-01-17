//: Playground - noun: a place where people can play

import UIKit

func isEven(number: Int) -> Bool {
    if number % 2 == 0 {
        //even
        return true
    } else {
        //odd
        return false
    }
}


isEven(89)
isEven(10)


//Next exercise - arrays and loops

var oddNumbers: [Int] = []
var sums: [Int] = []

for index in 1...100 {
    if isEven(index) == false {
        var oddNumber = index
        oddNumbers.append(oddNumber)
    }
}

print(oddNumbers)

for numberToAddTo in oddNumbers {
    sums.append(numberToAddTo + 5)
}

print (sums)

//
//Exercise
//Create an empty array of type Int called oddNumbers
//Using a standard for loop add all odd numbers less than or equal to 100 to the oddNumbers array
//Create a second array called sums of type Int
//Using a for each loop, iterate through oddNumbers array and add the current iteration value + 5 to the sums array
//Using a repeat while loop, iterate through the sums array and print "The sum is: x" where x is the current value of the iteration (ie The sum is: 15)
