//
//  PokemonViewModel.swift
//  PokeDex
//
//  Created by Nicholas Vu on 3/24/21.
//

import SwiftUI

class PokemonViewModel: ObservableObject {
    @Published var pokemon = [Pokemon]()
    let baseUrl = "https://my-json-server.typicode.com/nickvu08/Api/Pokemon"
    init() {
        fetchPokemon()
    }
    func fetchPokemon() {
        
        guard let url = URL(string: baseUrl) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else { return }
            guard let pokemon = try? JSONDecoder().decode([Pokemon].self, from: data) else { return }
            
            DispatchQueue.main.async {
                self.pokemon = pokemon
            }
       }.resume()
    }
    
    func backgroundColor(forType type: String) -> UIColor {
        switch type {
        case "Fire": return .systemRed
        case "Poison": return .systemGreen
        case "Electric": return .systemYellow
        case "Water": return .systemTeal
        case "Normal": return .systemGray
        case "Psychic": return .systemPurple
        case "Ground": return .systemOrange
        case "Flying": return .systemBlue
        case "Fairy": return .systemPink
        default: return .systemIndigo
        }
    }
}

/*extension Data {
    func parseData(removeString string: String) -> Data? {
        let dataAsString = String(data: self, encoding: .utf8)
        let parsedDataString = dataAsString?.replacingOccurrences(of: string, with: "")
        guard let data = parsedDataString?.data(using: .utf8) else { return nil }
        return data
    }
}*/
