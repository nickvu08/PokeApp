//
//  PokeTypes.swift
//  PokeDex
//
//  Created by Nicholas Vu on 4/21/21.
//

import Foundation

struct PokeTypes: Decodable{
    let types: String
    let weakness: String
}

let Poke_Types: [PokeTypes] = [
    .init(types: "Fire", weakness:""),
    .init(types: "Water", weakness:""),
    .init(types: "Grass", weakness:""),
    .init(types: "Normal", weakness:""),
    .init(types: "Flying", weakness:""),
    .init(types: "Fighting", weakness:""),
    .init(types: "Poison", weakness:""),
    .init(types: "Electric", weakness:""),
    .init(types: "Ground", weakness:""),
    .init(types: "Rock", weakness:""),
    .init(types: "Psychic", weakness:""),
    .init(types: "Ice", weakness:""),
    .init(types: "Bug", weakness:""),
    .init(types: "Ghost", weakness:""),
    .init(types: "Steel", weakness:""),
    .init(types: "Dragon", weakness:""),
    .init(types: "Dark", weakness:""),
    .init(types: "Fairy", weakness:"")
]

//var data = ["Normal", "Fire", "Water", "Grass", "Flying", "Fighting", "Poison", "Electric", "Ground", "Rock", "Psychic", "Ice", "Bug", "Ghost", "Steel", "Dragon", "Dark", "Fairy"]
