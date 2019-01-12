//1
func greet(person name: String) -> String {
    let greeting = "Hello, \(name)"
    return greeting
}

greet(person: "Celeste")

//2
func multiply(a: Int, b: Int = 10) {
    print("a * b")
}

//3
/*
 argument label: is to be seen from the external view. in order to make the input label more meaningful and easier to undersand.
 parameter label: is to be used as local naming, makes the body of the function neater
 */


//4
/*
 func birthday() -> String {
 }
 ---> return type is String
 */

/*
 func payment() -> Double {
 }
 ---> return type is Double
 */

