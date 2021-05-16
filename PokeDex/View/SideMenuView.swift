//
//  SideMenuView.swift
//  PokeDex
//
//  Created by Nicholas Vu on 4/7/21.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isShowing: Bool
    
    var arrayofViews = [AnyView(PokedexView()),AnyView(RocketLeaders()), AnyView(TypesPicker())]
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.red, Color.white]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack {
                //Header
                SideMenuHeaderView(isShowing: $isShowing)
                    .frame(height:150)
                
                
                
                //Cell Items
                ForEach(SideMenuViewModel.allCases, id: \.self) { tab in
                    NavigationLink(
                        destination: arrayofViews[tab.rawValue],
                        label: {
                            SideMenuCell(viewModel: tab)
                        })
                }
                
                Spacer()
            }
        }.navigationBarHidden(true)
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isShowing: .constant(true))
    }
}
