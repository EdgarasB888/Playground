import UIKit

//MARK: - Lesson 4: Functions

//we should always name our function as a verb

func multiplyTwoNumbers()
{
    print("result:", 3 * 5)
}

multiplyTwoNumbers()

func multiplyNumbers() -> Int
{
    let a = 5
    let b = 5

    return a * b
}

var myResult = multiplyNumbers()
print("My result is:", myResult)

//func name(argument param, Data type) return Int
func multiplyTwoNumbers(numberOne a: Int, numberTwo b: Int) -> Int
{
    return a * b
}

myResult = multiplyTwoNumbers(numberOne: 2, numberTwo: 5)
print("My result is:", myResult)

func multiplyTwoNumb(numberOne: Int, numberTwo: Int) -> Int
{
    return numberOne * numberTwo
}

myResult = multiplyTwoNumb(numberOne: 3, numberTwo: 3)
print("My result is:", myResult)

func multiplyTwoNumb(_ numberOne: Int, _ numberTwo: Int) -> Int
{
    return numberOne * numberTwo
}

myResult = multiplyTwoNumb(25, 4)
print("My result is:", myResult)

func multiplyTwoNumb(_ numberOne: Int, multiply numberTwo: Int) -> Int
{
    return numberOne * numberTwo
}

myResult = multiplyTwoNumb(21, multiply: 2)
print("My result is:", myResult)

//can pass more than one value
func average(_ numbers: Double...) -> Double
{
    var total = 0.0
    
    for pickNumber in numbers
    {
        total += pickNumber
    }
    
    return total / Double(numbers.count)
}

average(5, 10, 5, 10, 5, 10)

let someValue = 5
let arrayOfNumbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]

func filterLessThan(value: Int, numbers: [Int]) -> [Int]
{
    var filteredNumbers: [Int] = []
    
    for number in numbers
    {
        if number < value
        {
            filteredNumbers.append(number)
        }
    }
    
    return filteredNumbers
}

filterLessThan(value: someValue, numbers: arrayOfNumbers)

func calculateDateValue(from myDay: Int, _ myMonth: Int, _ myYear: Int)
{
    let currentDate = Date()
    let userCalendar = Calendar.current
    
    var dateComponents = DateComponents()
    dateComponents.day = myDay
    dateComponents.month = myMonth
    dateComponents.year = myYear
    
    if let calculateDate = userCalendar.date(from: dateComponents)
    {
        let daysPassed = userCalendar.dateComponents([.day], from: calculateDate, to: currentDate).day
        let monthsPassed = userCalendar.dateComponents([.month], from: calculateDate, to: currentDate).month
        let yearsPassed = userCalendar.dateComponents([.year], from: calculateDate, to: currentDate).year
        
        print("\(yearsPassed ?? 0) years, \(monthsPassed ?? 0) months, \(daysPassed ?? 0) days passed since my birthday")
    }
}

calculateDateValue(from: 26, 4, 2001)
