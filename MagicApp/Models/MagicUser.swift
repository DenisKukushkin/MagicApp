//
//  MagicUser.swift
//  MagicApp
//
//  Created by Denis Kukushkin on 20.11.2022.
//

import Foundation

struct MagicUser {
    let login: String
    let password: String
    
    static func getUser() -> MagicUser {
        MagicUser(login: "Gudini", password: "abrakadabra")
    }
}
