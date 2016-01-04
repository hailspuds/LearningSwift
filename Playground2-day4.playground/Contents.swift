import UIKit

//up to https://www.hackingwithswift.com/read/0/16/classes
//classes - time for some fun

class Singer {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func sing() {
        print("La la la la")
    }
}


var taylor1 = Singer(name: "Taylor", age: 25)
taylor1.name
taylor1.age
taylor1.sing()  //prints this in the class up above

class CountrySinger : Singer {
    override func sing() {
        print ("Trucks, girls and booze")
    }
}

var taylor2 = CountrySinger(name: "Taylor", age: 25)
taylor2.sing()

//original class extended :)

//now things get harder. 
//extext to HeavyMetalSinger - need noiseLevel

class HeavyMetalSinger : Singer {
    var noiseLevel: Int
    
    init(name: String, age: Int, noiseLevel: Int) {
        self.noiseLevel = noiseLevel
        super.init(name: name, age: age)    //taking it from the main glass CountrySinger?
    }
    
    override func sing() {
        print("Grrrrhahshdsjhdsdhsjdhsdjhsdhshhwdj! I'm very loud. I'm at \(noiseLevel)db!!!!")
    }
    
}

var eaglesOfDeathMetal = HeavyMetalSinger(name: "John", age: 38, noiseLevel: 39)
eaglesOfDeathMetal.sing()

//PLEASE NOTE: If I were to summarise this key difference between structs and classes, I'd say this: classes offer more flexibility, whereas structs offer more safety. As a basic rule, you should always use structs until you have a reason to use classes.

//properties
struct Person {
    var clothes: String {
        willSet {
            updateUI("I'm changing from \(clothes) to \(newValue)")
        }
        
        didSet {
            updateUI("I just changed from \(oldValue) to \(clothes)")
        }
    }
}

func updateUI(msg: String) {
    print(msg)
}

var taylor = Person(clothes: "T-shirts")
taylor.clothes = "skirts!"

//static properties and methods

struct TayTayFan {
    static var favSong = "Shake it Off"
    
    var name: String
    var age: Int
}

let fan = TayTayFan(name: "James", age: 26)
print(TayTayFan.favSong)

//access control
//public = all can read and writ the property
//internal = only swift code can
//private only swift in same file can

//poly what and type casting

    //hm... will have to revisit

//closures

    //will have to revisit too



