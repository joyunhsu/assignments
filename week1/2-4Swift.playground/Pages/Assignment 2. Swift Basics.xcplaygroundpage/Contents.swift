//Swift Basics:
//1
let Pi: Double = 3.14159265359

//2
let x: Int = 5
let y: Int = 27
let average = (x + y)/2

//3
let recordAverage = "\(average).0"

let A = 10 / 3
let B = 10.0 / 3.0
let C = 10.0 / 5.0
/*
 when useing Int/Int, the default result would be
 Int no matter it 整除 or not. using Double/Float to begin with
 is the opposite, which contains values with fractional components. However, when the result 整除, no matter Int or Doutble/Float is used, you can only see the result as integer.
 */

//4
var flag: Bool = true
var inputString: String = "Hello World."
let bitsInBite: Int = 8
let averageScore: Double = 86.8

//5
var salary = 22000
salary += 28000

//6
let string1 = "Hi"
let string2 = "Hi"
string2 == string1

//7
let X = 10
let Y = 3
let remain = 10 % 3

/*
 8. let vs. var: let is for constants while var is for
 variables. Which means var is mutable and let is immutable.
 Usually begins with decalring a data as let unless you're sure about using variable. Otherwise, if needed,
 Swift will suggest you to change syntax from let to var.
 */

/*
 9. Naming conventions and rules:
 1 don't begin with numbers.although numbers may be included elsewhere within the name
 2 use camelCase: Start with lower case, continue with words begin wtih upper case character, without space. Make names easier to read. Not a rule, more
 like a convention.
 3 don't include special marks. While emojis can be used,
 no recommended.
 */

/*
 10. Type Inference: Swift will automatically guess what your
 data types are by the content you written, without you declaring each of them.
 */

/*
 11. Becasue Swift is type-safe. phoneNumber is of type Int as first declared. Cannot be used as of type String. Type is decided once you write it and can't be changed.
 */


