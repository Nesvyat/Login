//
//  User.swift
//  Login
//
//  Created by MacBook Pro on 20.08.2022.
//

struct User {
    let login: String
    let password: String
    let persons: Person
    
}


extension User {
    static func creationUser() -> User {
        User(login: "Svyatoslav", password: "1", persons: Person.creatingPerson())
    }
}
struct Person {
    let name: String
    let surname: String
    let hobby: String
    
}
extension Person {
    
static func creatingPerson() -> Person {
    Person(name: "Svyatoslav", surname: "Nesterov", hobby: "Football")
    
}
   
}
