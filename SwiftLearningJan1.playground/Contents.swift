//Jan 1 quick intro tutorial from https://www.hackingwithswift.com


import UIKit

var name: String

name = "John Smith"

name = "Romeo"


var age: Int
age = 20


var lat: Double
var long: Float
lat = 93939393.39393939
long = 292.3


var stayOutTooLate = true
stayOutTooLate
!stayOutTooLate


"Your name is \(name)" + " and your age is \(age)"
"in 20 years you'll be \(age + 20)"

var songs = ["Shake it Off", "You Belong with Me", "Love Story"]
var songs2 = ["Today was a Fairytale", "White Horse", "Fifteen"]

var both = songs + songs2

both += ["Trouble"]

//dictionaries   - key/value

var john_dict = ["name": "john", "dob": "march"]

john_dict["dob"]

//conditional statements

//start from here: https://www.hackingwithswift.com/read/0/8/conditional-statements

var trueFalse = false

if trueFalse == true
{
    "this is true"
}
else
{
    "this is false"
}

//loops
//taytay example

var lyric = "Haters going to "

for _ in 1 ... 5 {
    lyric += "hate "
}

print (lyric)


for song in songs
{
    print("My favourite song is \(song)")
    
}

/* commented out because ... annoying!
print (songs.count)

var counter: Int
counter = 1

while true {
    print ("The counter is at \(counter)")
    ++counter
    if counter == 567 {
        break
    }
}
*/

//switch cases - should have learnt about these years ago!

let numberOfAlbums: Int = 1

switch numberOfAlbums {
case 0:
    print ("You're just starting out!")
case 1:
    print ("You just released iTunes Live From SoHo")
case 2:
    print ("Number 2")
default:
    print ("This is a default")
}

//now onto functions
func myFavSong(song: String, number: Int)
{
    print ("My favourite song is \(song)")
    print ("And the number is \(number)")
}

//apparently the first item in a function doesn't need a label.

func testing123(year: Int, message: String)
{
    print(year)
    print(message)
}

myFavSong("Shake it Off", number: 45)
testing123(32, message: "hello hello hello")

func isTayTayGreat(yesno: String) -> Bool
{
    if yesno == "yes"
    {
        return true
    }
    if yesno == "no"
    {
        return true
    }
    
    //if nothing
    return false
}

isTayTayGreat("no")

//function with return = func NAME(vars) -> return {}    //boom!


//optionals

//upto here: https://www.hackingwithswift.com/read/0/12/optionals



func yearAlbumReleased(name: String) -> Int? {
    if name == "Taylor Swift" { return 2006 }
    if name == "Fearless" { return 2008 }
    if name == "Speak Now" { return 2010 }
    if name == "Red" { return 2012 }
    if name == "1989" { return 2014 }
    
    return nil
}

var year = yearAlbumReleased("Red")

if year == nil {
    print("There was an error")
} else {
    if let checkYear = year
    {
        print("It was released in \(checkYear)")
    }
}

//https://www.hackingwithswift.com/read/0/13/optional-chaining
//OPTIONAL CHAINING TIME EVERYONE!!!!!!!


func albumReleasedYear(year: Int) -> String? {
    switch year {
    case 2006: return "Taylor Swift"
    case 2008: return "Fearless"
    case 2010: return "Speak Now"
    case 2012: return "Red"
    case 2014: return "1989"
    default: return nil
    }
}

//The nil coalescing operator!!!
// the ?? bit
let album = albumReleasedYear(2006) ?? "unknown"
print("The album is \(album.uppercaseString)")


enum WeatherType {
    case Sun
    case Cloud
    case Rain
    case Wind(speed: Int)
    case Snow
}


func getHaterStatus(weather: WeatherType) -> String? {
    switch weather {
    case .Sun:
        return nil
    case .Wind(let speed) where speed < 10:
        return "meh"
    case .Cloud, .Wind:
        return "dislike"
    case .Rain:
        return "hate"
    case .Snow:
        return "cold"
    }
}

getHaterStatus(.Cloud)
getHaterStatus(.Sun)
getHaterStatus(.Wind(speed: 30))
getHaterStatus(.Snow)


struct Person {
    var clothes: String
    var shoes: String
}

let taylor = Person(clothes: "T-shirt", shoes: "sneakers")
let other = Person(clothes: "short skirts", shoes: "high heals")

print(taylor.clothes)
print(other.shoes)

var taylorCopy = taylor
taylorCopy.shoes = "flip flops"

taylor
taylorCopy


