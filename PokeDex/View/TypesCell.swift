//
//  TypesCell.swift
//  PokeDex
//
//  Created by Nicholas Vu on 4/14/21.
//

import SwiftUI

struct TypesCell: View {
    let pokeType: PokeTypes
    var body: some View {
            ZStack{
                Text(pokeType.types)
                .font(.subheadline).bold()
                .font(.system(size: 1000))
                .foregroundColor(.white)
                .padding(.horizontal, 12)
                .padding(.vertical, 6)
                .frame(width: 100, height: 30)
            }
            .background(Color.red)
            .cornerRadius(10)
    }
}

/*struct TypesCell_Previews: PreviewProvider {
    static var previews: some View {
        
    }
}*/
