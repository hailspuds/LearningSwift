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

func getHaterStatus() -> String {
    return "Hate"
}


//optionals



















