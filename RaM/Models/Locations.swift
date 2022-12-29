//
//  Locations.swift
//  RaM
//
//  Created by Hakan Adanur on 27.12.2022.
//

import Foundation

struct LocationBase : Codable {
    let results : [Location]
}

struct Location : Codable {
    let name : String
    let type : String
    let dimension : String
}
