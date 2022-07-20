import UIKit

//MARK: - Lesson 2

//if, else conditional statements

//MARK: - Operators
var a = 10
a = a + 1
a = a - 1
a = a * a
a = a / 1

var b = 10
b += 1
b -= 1
b /= 2
b *= 10

//Remainder
let e = 9
let f = 4
var g = e % f

var myNumber = 10

a == b
a != b
a >= b
a <= b



if myNumber < 4
{
    print("The condition is true")
}
else
{
    print("The condition is false")
}

if myNumber < 4 && myNumber > 7
{
    print("The 1st condition is true")
}
else if myNumber < 8
{
    print("The 2nd condition is true")
}
else if myNumber >= 10
{
    print("The 3nd condition is true")
}
else
{
    print("Nothing is true")
}

let letter = "C"

switch letter
{
case "a","A":
    print("Our letter is a")
case "b","B":
    print("Our letter is b")
case "c","C":
    print("Our letter is c")
default:
    print("No idea!")
}

let planetCount = 8
var countExpression = ""

switch planetCount
{
case 0:
    countExpression = "none"
case 1:
    countExpression = "one"
case 1...4:
    countExpression = "a few"
case 5, 6, 7, 8, 9, 10:
    countExpression = "several"
case 12...:
    countExpression = "dozens of or even more"
default:
    countExpression = "No idea!"
}

print("There are \(countExpression) known planets so far.")

let levelStage: Character = "C"

switch levelStage
{
case "A":
    print("You have area A access")
    fallthrough //same as continue
case "B":
    print("You have area B access")
    fallthrough
case "C":
    print("You have area C access")
default:
    break
}

let color = "Red"
let colorNumber = 3

switch color
{
case "Red" where colorNumber == 2:
    print("This is my color from number \(colorNumber)")
case "Black" where colorNumber == 3:
    print("This is my color from number \(colorNumber)")
default:
    break
}

let updateDeniedMessage = "Can't update Xcode"
let updateMessage = "Updated!"

let latestXcodeVersion = false
let latestMacVersion = true

if !latestXcodeVersion
{
    print(updateMessage)
}
else
{
    print(updateDeniedMessage)
}

if(latestXcodeVersion && latestMacVersion)
{
    print(updateMessage)
}
else
{
    print(updateDeniedMessage)
}

if(latestXcodeVersion || latestMacVersion)
{
    print(updateMessage)
}
else
{
    print(updateDeniedMessage)
}
