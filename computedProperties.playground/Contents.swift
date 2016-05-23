//: Playground - noun: a place where people can play

import Cocoa

let currentYear: Int

struct Person {
    
   var firstName: String
   var lastName: String
    var yearOfBirth: Int
    
    
    init(firstName: String, lastName: String, yearOfBirth: Int) {
        
        self.firstName = firstName
        self.lastName = lastName
        self.yearOfBirth = yearOfBirth
    }
    
    
}

let joe = Person(firstName: "Joe", lastName: "Doe", yearOfBirth: 23)
print(joe.firstName, joe.lastName)


