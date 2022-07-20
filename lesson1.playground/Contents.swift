import UIKit

/*
 
 Lesson 1 - Variable, constant, types of data
 
 */


//var - stored in memory, we can change
var greeting = "Hello, playground"
print(greeting)
//changed here
greeting = "Swift\n"
print(greeting)

//let - constant, can't change
let longerGreeting = greeting + "We're glad you're here!"
print (longerGreeting)

//won't work
//longerGreeting = "hello"

let swift = "Swift 5.7"
//String interpolation
let swiftLanguage = "Swift language version: \(swift)"
print(swiftLanguage)

//we can also declare what type of variable we will have
var helloMSG: String = "hello swift"

//if we don't know, whether we will change our variable, we should use constant (let)

let name: String = "EB"
let age: Int = 21
let height: Double = 176.5
let weight: Float = 75
let student: Bool = true
let myLetter: Character = "C"

//MARK: - Casting

let castIntToDouble = Double(age) + height
print(Double(age))

let castIntToString = "I am " + String(age) + " years old."

let stringNumber = "10"
//optional
let castStringToInt = age + Int(stringNumber)!

//optional example (can be empty)
let optionalString: String = "100a"

//not the same stringNumber like in line 48
if let stringNumber = Int(optionalString)
{
    let total = stringNumber + 10
    print("total is \(total)")
}

//MARK: - Tuples

var myNameIs: (String, String) = ("E", "B")
var myBossIs: (String, String, Int) = ("Sam", "Ken", 44)

print("my boss is \(myBossIs.0) \(myBossIs.1) and his age is \(myBossIs.2)")
