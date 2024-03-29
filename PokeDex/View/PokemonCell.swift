//
//  PokemonCell.swift
//  PokeDex
//
//  Created by Nicholas Vu on 3/23/21.
//
import Kingfisher
import SwiftUI

struct PokemonCell: View {
    let pokemon: Pokemon
    let viewModel: PokemonViewModel
    let bgColor: Color
    
    init(pokemon: Pokemon, viewModel: PokemonViewModel){
        self.pokemon = pokemon
        self.viewModel = viewModel
        self.bgColor = Color(viewModel.backgroundColor(forType: pokemon.type))
    }
    var body: some View {
        ZStack {
            VStack(alignment: .leading){
                Text(pokemon.name.capitalized)
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.top, 4)
                    .padding(.leading)
                
                HStack{
                    Text(pokemon.type)
                        .font(.subheadline).bold()
                        .foregroundColor(.white)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.white.opacity(0.25))
                        )
                        .frame(width: 100, height: 24)
                        
                    
                    KFImage(URL(string: pokemon.imageUrl))
                        .resizable()
                        .scaledToFit()
                        .frame(width:68, height: 68)
                        .padding([.bottom, .trailing], 4)
                }
            }
        }
        .background(bgColor)
        .cornerRadius(12)
        .shadow(color: bgColor, radius: 6, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
        
    }
}
