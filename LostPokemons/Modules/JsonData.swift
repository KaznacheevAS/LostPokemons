//
//  JsonData.swift
//  LostPokemons
//
//  Created by Anton Kaznacheev on 28.04.2022.
//

import Foundation

enum urlRickandMorty: String {
    case urlEpisodes = "https://rickandmortyapi.com/api/episode?page=2"
}

extension ListPokemonsTableViewController {
    func fetchEpisode() {
        guard let url = URL(string: urlRickandMorty.urlEpisodes.rawValue) else { return  }
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else {
                print(error?.localizedDescription ?? "NO")
                return
            }
            
            do {
                let info = try JSONDecoder().decode(ResultsInfo.self, from: data)
                print(info)
            } catch let error {
                print(error.localizedDescription)
            }
            
        }.resume()
    }
}
