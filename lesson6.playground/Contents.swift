import UIKit
import Foundation

//MARK: - Enumeration

var someDay = "Friday"

func setupAlarm()
{
    if someDay == "Friday"
    {
        print("Set up my alarm at 6:30AM")
    }
    else
    {
        print("no alarm")
    }
}

setupAlarm()

enum WeekDay
{
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday, sunday // can put on the same line but we need a comma
}

//var weekday: WeekDay = .friday
var weekdays = WeekDay.friday

func setupBedTimeAlarm()
{
    if weekdays == .sunday || weekdays == .monday
    {
        print("set up my bedtime at 11:30PM")
    }
    else
    {
        print("no alarm")
    }
}

setupBedTimeAlarm()

weekdays = .tuesday

func setupSleepAlarm()
{
    switch weekdays
    {
        case .monday:
            print("set up my bedtime at 11:30PM")
        case .tuesday:
            print("set up my bedtime at 10:30PM")
        case .wednesday:
            print("set up my bedtime at 11:30PM")
        case .thursday:
            print("set up my bedtime at 10:30PM")
        case .friday:
            print("set up my bedtime at 11:30PM")
        case .saturday:
            print("set up my bedtime at 10:30PM")
        case .sunday:
            print("set up my bedtime at 10:30PM")
    }
}

setupSleepAlarm()

enum Calculation: String
{
    case addition = "+"
    case subtraction = "-"
    case multiplication = "*"
    case division = "/"
}

var calc = Calculation.addition
print(calc.rawValue)

enum Planet: Int
{
    case venus = 1, mercury, mars, earth, jupiter, saturn, uranus, neptune, pluto
}

var somePlanet = Planet.earth
print("Earth is the \(somePlanet.rawValue) planet from the sun")

let possiblePlanet = Planet(rawValue: 5)
print("The \(possiblePlanet?.rawValue ?? 1)th planet is \(possiblePlanet!)")

enum Weekend
{
    case saturday(String)
    case sunday(String, Int, String)
}

var wnd = Weekend.sunday("Set your bedtime at", 11, "PM")
print(wnd)

//MARK: - Structures

struct iPhone
{
    var model: String?
    var capacity: Int?
    var color: String?
    
    func getSpecs()
    {
        print("\(model ?? ""), \(capacity ?? 0), \(color ?? "")")
    }
}

let iPhone11 = iPhone(model: "iPhone 11", capacity: 128, color: "red")

var iPhoneXR = iPhone11 //makes a copy
iPhoneXR.model = "iPhone XR"
iPhoneXR.color = "black"

iPhone11.getSpecs()
iPhoneXR.getSpecs()

//MARK: - Class

class Mac
{
    var model: String?
    var year: Int?
    var color: String?
    var ssdMemory: Int?
    
    init(model: String, year: Int, color: String, ssdMemory: Int)
    {
        self.model = model
        self.year = year
        self.color = color
        self.ssdMemory = ssdMemory
    }
    
    func getSpecs()
    {
        print("\(model ?? ""), \(year ?? 0), \(color ?? ""), \(ssdMemory ?? 0)")
    }
}

let macBookPro = Mac(model: "MacBook Pro", year: 2017, color: "Space Gray", ssdMemory: 512)
macBookPro.getSpecs()

let macBookAir = macBookPro //saves everything to one memory cell
macBookAir.model = "MacBook Air"
macBookAir.year = 2020

macBookPro.getSpecs()
macBookAir.getSpecs()

