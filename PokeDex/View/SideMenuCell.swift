//
//  SideMenuCell.swift
//  PokeDex
//
//  Created by Nicholas Vu on 4/7/21.
//

import SwiftUI

struct SideMenuCell: View {
    let viewModel: SideMenuViewModel
    
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: viewModel.imageName)
                .frame(width: 24, height: 24)
            
            Text(viewModel.title)
                .font(.system(size: 15, weight: .semibold))
            
            Spacer()
        }
        .foregroundColor(.white)
        .padding()
    }
}

struct SideMenuCell_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuCell(viewModel: .rLeaders)

    }
}
