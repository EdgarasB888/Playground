import UIKit

//MARK: - Collections

//MARK: - Arrays

//Two ways to initialize empty arrays
let arrayOfString: [String] = []
var arrayOfInt = [Int]()

let arrayOfStrings = ["a", "d", "e", "d"]
arrayOfStrings[2]

//actions with int arrays
arrayOfInt = [1, 2, 3, 4, 5]
arrayOfInt = [1, 2, 3, 4, 5, 6]
arrayOfInt += [7, 8]
arrayOfInt.append(9)
arrayOfInt.isEmpty
arrayOfInt.insert(0, at: 0)
arrayOfInt.count
arrayOfInt[9] = 10
//arrayOfInt.removeAll()
//arrayOfInt = []
arrayOfInt.reversed()
arrayOfStrings.reversed()

arrayOfInt.reverse() //reverses the array instead of only displaying reversed array like reversed()

print(arrayOfInt)
print(arrayOfStrings)


print(arrayOfInt)

type(of: arrayOfInt)

var fruits = ["mango", "durian"]

if !fruits.isEmpty
{
    fruits.append("apple")
    fruits.removeFirst()
    fruits.insert("pear", at: 2)
    fruits.insert(contentsOf: ["cherry", "mango"], at: 3)
    fruits.sorted()
    print(fruits.sorted())
}

fruits.removeAll(where: { fruit in
    fruit == "pear"
})

print(fruits)

let search = fruits.contains { fruit in
    fruit == "pear"
}

var listOfIntArray: [[Int]] = [[1,2,3], [4,5,6]]
print(listOfIntArray[1][1])

//MARK: - Sets

//two ways two initialize empty sets
var setOfCharacters = Set<Character>()

var setOfInts: Set<Int> = []

setOfCharacters = ["a", "d", "e", "d"]
print(setOfCharacters)

setOfCharacters = ["b"]

setOfCharacters.insert("c")
setOfCharacters.insert("a")

//two ways to empty sets
//setOfCharacters.removeAll()
//setOfCharacters = []

setOfCharacters.contains("c")
print(setOfCharacters)

let someSorting = setOfCharacters.sorted()
someSorting.sorted(by: >)
print(someSorting)

let animals: Set = ["🐯","🦆"]
print(animals)

//MARK: - Dictionaries

//three ways to declare dictionaries
var stringDict = Dictionary<String, String>()
var intDict = [String: Int]()
var someDict: [String: Int] = [:]

//key : value
var student: [String: String] = [
    "firstName": "A",
    "lastName": "B",
    "dof": "1-May-1986",
    "email": "aa@aa"
]

student["firstName"]
student["firstName"] = "EB"
student.updateValue("EEE", forKey: "firstName")
student["fullName"] = "EB BB"
student.removeValue(forKey: "fullName")
student["email"] = nil
print(student)

dump(student)
type(of: student)

var fruitsList: [String: [String]] = [
    "A" : ["Apple", "Appricot"],
    "B" : ["Banana", "Blueberry"]
]

fruitsList["B"]

//MARK: - Loops

//MARK: - For loop

for _ in 1...10
{
    print("Hello from !!!")
}

var basket = 0
let apples =
[
    "red apple",
    "green apple",
    "red apple",
    "green apple",
    "red apple",
    "green apple",
    "red apple",
    "green apple",
    "red apple",
    "green apple"
]

for apple in apples
{
    if apple == "red apple"
    {
        basket += 1
    }
}

print("I have \(basket) red apples in my basket")

let numberOfLegs =
[
    "spider" : "8",
    "ant" : "6",
    "dog" : "4"
]

for (animalName, legsCount) in numberOfLegs
{
    print("\(animalName)s have \(legsCount) legs")
}

//MARK: - While loop

var counter = 0

while true
{
    print("My counter is: \(counter)")
    counter += 1
    
    if counter == 20
    {
        break
    }
}
