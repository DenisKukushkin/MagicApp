//
//  User.swift
//  MagicApp
//
//  Created by Denis Kukushkin on 20.11.2022.
//

import Foundation

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            login: "Gudini",
            password: "abrakadabra",
            person: Person(
                name: "Denis",
                surname: "Kukushkin",
                profileImage: "profile",
                info: Info(
                    city: "Moscow 🪆",
                    hobbies: ["📚 reading ", "🧑‍💻 learning", "✈️ travelling"],
                    favoriteAnimal: "Panda lover! :)",
                    animalImage: "panda"
                )
            )
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let profileImage: String
    let info: Info
}

struct Info {
    let city: String
    let hobbies: [String]
    let favoriteAnimal: String
    let animalImage: String
}

