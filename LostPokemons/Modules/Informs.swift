//
//  Informs.swift
//  LostPokemons
//
//  Created by Anton Kaznacheev on 11.05.2022.
//

import Foundation

struct Informs: Decodable {
    let info: Info?
    let results: [ResultsInfo]?
}

struct Info: Codable {
    let count, pages: Int?
    let next: String?
    let prev: String?
}

struct ResultsInfo: Decodable {
    let name: String?
    let air_date: String?
    let episode: String?
    let characters: [String]?
    let url: String?
    let created: String?

}
