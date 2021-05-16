//
//  PokedexView.swift
//  PokeDex
//
//  Created by Nicholas Vu on 3/23/21.
//

import SwiftUI

struct PokedexView: View {
    private let gridItems = [GridItem(.flexible()),GridItem(.flexible())]
    
    @ObservedObject var viewModel = PokemonViewModel()
    
    var body: some View {
            ScrollView{
                LazyVGrid(columns: gridItems, spacing: 16) {
                    ForEach(viewModel.pokemon) { pokemon in
                        PokemonCell(pokemon: pokemon, viewModel: viewModel)
                    }
                }
            }
            .navigationTitle("Kanto Region")
    }
}

struct PokedexView_Previews: PreviewProvider {
    static var previews: some View {
        PokedexView()
    }
}
