import UIKit

print ("Hello world")

var myVariable = 42
myVariable = 50
let myConstant = 42

print (myVariable)
print (myConstant)

let testConstant: Float = 4

let label: String = "The width is "
let width = 94
let widthLabel = label + String(width)
//error: binary operator '+' cannot be applied to operands of type 'String' and 'Int'

let apples: Int = 3
let oranges: Int = 5
let appleSummary = "I have \(apples) apples and \(oranges) that I could eat"


var shoppingList = ["catfish", "water", "tulips", "blue paint"]
shoppingList[1] = "bottle of water"

print (shoppingList)

print (shoppingList[1])

var jobs = ["Will": "Captain", "Bill": "Major"]

print (jobs["Will"])  //optional thing! come back to this
//add job to dict.

jobs["Jayne"] = "Admiral"

print (jobs)

let individualScores = [75,43,103,87,12]
var teamScore: Int = 0

for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}

teamScore

//optionals

var optionalString: String? = "Hello"
optionalString = nil

//var optionalName: String? = "John Appleseed"
var optionalName: String? = nil

var greeting: String = "Hello!"

if let name = optionalName {
    greeting = "Hello, \(name)"
} else if optionalName == nil {
    greeting = "The variable optionalName has been set"
}

let vegetable = "watermeloum"
switch vegetable {
    case "celery":
        let vegetableComment = "Add some rasins"
    case "cucumber", "watermelon":
        let vegetableComment = "That would be tasty"
    case let x where x.hasSuffix("um"):
        let vegetableComment = "Is it a spicy \(x)?"
    default:
        let vegetableComment = "Everything tastes good in soup eh?"
}

//without a default case:     error: switch must be exhaustive, consider adding a default clause

let interestingNumbers = [
    "Prime": [2,3,5,7,11,13],
    "Fibonacci": [1,1,2,3,5,8],
    "Square":[1,4,9,16,25],
    "Random":[123,12,12],
]

var largest: Int = 0
var largestType = ""

for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            largestType = kind
        }
    }
}

largest
largestType

print ("The largest number was \(String(largest)) and it was a \(largestType)")














