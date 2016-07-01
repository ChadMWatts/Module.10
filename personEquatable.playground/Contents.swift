//: Playground - noun: a place where people can play

import Cocoa

class Person: Equatable {
    
    let firstName: String
    let lastName: String
    let age: Int
    
    init(firstName: String, lastName: String, age: Int) {
        
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
    }
    
}

func ==(lhs: Person, rhs: Person) -> Bool {
    
    return lhs.firstName == rhs.firstName
           && lhs.lastName == rhs.lastName
           && lhs.age == rhs.age
}

let james  = Person(firstName: "James", lastName: "Pacheco", age: 26)
let chad = Person(firstName: "Chad", lastName: "Watts", age: 22)
let axton = Person(firstName: "Axton", lastName: "Watts", age: 13)
let max = Person(firstName: "Max", lastName: "ale", age: 44)
let driz = Person(firstName: "Driz", lastName: "Doeorden", age: 89)

let clubMembers: [Person] = [james, chad, axton]

func areYouAMemberOfTheClub(person: Person) -> Bool {
        
    if clubMembers.contains(person) {
        return true
        
    } else {
        return false
        
        }
    }

areYouAMemberOfTheClub(chad)
areYouAMemberOfTheClub(max)