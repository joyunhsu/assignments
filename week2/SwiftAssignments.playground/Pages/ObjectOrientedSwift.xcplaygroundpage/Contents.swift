//1
enum Gender {
    case male
    case female
    case undefined
}

class Animal {
    let gender: Gender
    
    init(gender: Gender) {
        self.gender = gender
    }
    
    func eat()  {
        print("I eat everything!")
    }
}

let someAnimal = Animal(gender: Gender.female)
someAnimal.eat()


//2
class Elephant: Animal {
    override func eat() {
        print("What elephant usually eat")
    }
}
let elephant = Elephant(gender: Gender.female)
elephant.eat()


class Tiger: Animal {
    override func eat() {
        print("What tiger usually eat")
    }
}
let tiger = Tiger(gender: Gender.male)
tiger.eat()

class Horse: Animal {
    override func eat() {
        print("What horse usually eat")
    }
}
let horse = Horse(gender: Gender.undefined)
horse.eat()


//3
class Zoo {
    var weeklyHot: Animal
    
    init(weeklyHot: Animal) {
        self.weeklyHot = weeklyHot
    }
}

let zoo = Zoo(weeklyHot: Tiger(gender: Gender.female))
zoo.weeklyHot = tiger
zoo.weeklyHot = elephant
zoo.weeklyHot = horse


/*
 4 What have you learned in Object-Oriented Swift session?
 Object-oriented is a style of programming wherein we model information into data structures or objects. Representing the concept of “objects” that have data fields (attributes that describe the object) and associated procedures known as methods. Objects, which are usually instances of classes, are used to interact with one another to design applications and computer programs.
 */


/*
 5 What's the difference between Struct and Class?
 Class supports the inheritance feature, while Struct doesn't. Struct is value type, while Class is reference type. Unlike struct that automatically  creates a number wise initializer for us, we always need to write init method in a class ourselves, unless the stored properties are optional.
 */


/*
 6 what's the difference between instance method and type method?
Instance methods are methods that are called on an instance of a particular type. Whereas Type mthods are methods that called on the type itself.
 */


/*
 7 What does Initializers do in class and struct?
 The only purpose of Initializer is to make sure that all store properties have initial value, and ready to be used, which means all stored properties need to have initial value before you can use it. It decides what arguments you can pass in to the stores properties.
 */


/*
 8 what does self mean in an instance method and type method?
Saying self from inside the struct, refers to the struct itself. Now the Swift official recommendation is that you’re require to use it when distinguish between parameter or argument labels and property names. Tutor Pasan himself usually only use self in init method but never in any other methods unless he needs to.
 */


/*
 9 what's the difference between reference type and value type?
 A value type is a type, whose underlying value is copied when it is assigned to a new variable or constant or when it is passed into a function. A reference type, on the other hand is not copied when assigned to a new variable or constant or when passed into a function. Rather than a copy, a reference to the existing instance is used.
 */

