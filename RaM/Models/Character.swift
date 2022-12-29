//
//  Character.swift
//  RaM
//
//  Created by Hakan Adanur on 27.12.2022.
//

import Foundation

struct CharacterBase : Codable {
    let results : [Character]
}

struct Character : Codable {
    let name : String
    let species : String
    let status : String
    let image : String
    let gender : String
}
