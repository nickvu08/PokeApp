//
//  SideMenuHeaderView.swift
//  PokeDex
//
//  Created by Nicholas Vu on 4/7/21.


import SwiftUI

struct SideMenuHeaderView: View {
    @Binding var isShowing: Bool
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            
            Button(action: {
                withAnimation(.spring()) {
                    isShowing.toggle()
                }
            }, label: {
                Image(systemName: "xmark")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.white)
                    .padding()
            })
            
            VStack(alignment: .leading) {
                Image("PokeBallIcon")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
                    .padding(.bottom, 16)
                
                Text("PokeApp")
                    .font(.system(size: 24, weight: .semibold))
                    .foregroundColor(.white)
                HStack(spacing: 12) {
                    Text("")
                    
                    Spacer()
                }
                
                Spacer()
            }.padding()
        }
    }
}

struct SideMenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeaderView(isShowing: .constant(true))
    }
}
