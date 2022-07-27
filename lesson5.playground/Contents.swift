import UIKit

//MARK: - Lesson 5: OOP

class Post
{
    var postTitle = ""
    var postText = ""
    var postAuthor = ""
    var numberOfLikes = 0
    
    func addLike()
    {
        numberOfLikes += 1
    }
}

let firstPost = Post()

firstPost.postTitle = "my first twitter post"
firstPost.postText = "just testing"
firstPost.postAuthor = "AA"
firstPost.addLike()

print("Author - \(firstPost.postAuthor) has published a new post \(firstPost.postTitle) with the text: \(firstPost.postText)")

let secondPost = firstPost

secondPost.postTitle = "my second twitter post"
secondPost.postText = "Testing"
secondPost.postAuthor = "BB"

print("Author - \(secondPost.postAuthor) has published a new post \(secondPost.postTitle) with the text: \(secondPost.postText)")

class Human
{
    var name = "Undefined"
    var age = 0
    
    init(){}
    
    init(name: String, age: Int)
    {
        self.name = name
        self.age = age
    }
    
}

let person = Human(name: "Bob", age: 23)
let newPerson = Human()
newPerson.name = "Tom"

class Alien
{
    var name: String?
    var age: Int?
    var hair: Bool = false
    
    func alienDescription() -> String
    {
        if let alienAge = age
        {
            return "Hello, my name is \(name ?? "UUUUU") and I am \(alienAge) years old!"
        }
        else
        {
            return "Hello, my name is \(name ?? "UUUUU")"
        }
    }
    
    init()
    {
        name = "UFO"
        hair = true
    }
    
    init(name: String, age: Int, hair: Bool)
    {
        self.name = name
        self.age = age
        self.hair = hair
    }
} //end of class

let alien = Alien(name: "JSON", age: 400, hair: true)

class Parent
{
    var Name = "Undefined"
    var Age = 0
    
    init(){}
    
    init(name: String, age: Int)
    {
        self.Name = name
        self.Age = age
    }
    
    func canWalk()
    {
        print("I can walk")
    }
    
    func canSleep()
    {
        print("I can sleep")
    }
    
    func canEat()
    {
        print("I can eat")
    }
}

let dad = Parent(name: "Sam", age: 44)

class Child: Parent
{
    func feeding()
    {
        if Age <= 2
        {
            print("need to feed me")
        }
        else
        {
            print("can eat by myself")
        }
    }
}

let littleBoy = Child(name: "Tom", age: 1)
littleBoy.feeding()

class SchoolChild: Child
{
    func learning()
    {
        if Age >= 7 && Age <= 19
        {
            print("High school time")
        }
        else
        {
            print("Too early for school")
        }
    }
}

let schoolBoy = SchoolChild(name: "Q", age: 12)
schoolBoy.learning()

//Polimorphism

class Figure
{
    func draw()
    {
        
    }
}

class Circle: Figure
{
    override func draw()
    {
        print("Draw the circle")
    }
}

class Triangle: Figure
{
    override func draw()
    {
        print("Draw the triangle")
    }
}

class Rectangle: Figure
{
    override func draw()
    {
        print("Draw the rectangle")
    }
}

let circle = Circle()
let triangle = Triangle()
let rectangle = Rectangle()

func drawFigure(_ figure: Figure)
{
    figure.draw()
}

drawFigure(triangle)
drawFigure(circle)
drawFigure(rectangle)
