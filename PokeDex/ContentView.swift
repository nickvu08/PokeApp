//
//  ContentView.swift
//  PokeDex
//
//  Created by Nicholas Vu on 3/23/21.
//

import SwiftUI
struct ContentView: View {
    @State private var isShowing = false
    
    var body: some View {
        NavigationView {
            ZStack {
                if isShowing {
                    SideMenuView(isShowing: $isShowing)
                }
                
                HomeView()
                    .cornerRadius(isShowing ? 20 : 10)
                    .offset(x: isShowing ? 250 : 0, y: isShowing ? 44 : 0)
                    .scaleEffect(isShowing ? 0.8 : 1)
                    .navigationBarItems(leading: Button(action:{
                        withAnimation(.spring()) {
                            isShowing.toggle()
                        }
                    }, label: {
                        Image(systemName: "list.bullet")
                            .resizable()
                            .frame(width: 30, height: 25)
                            .foregroundColor(.black)
                    }))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HomeView: View {
    var body: some View {
        ZStack {
            VStack{
            Text("Welcome to PokeApp!")
                .fontWeight(.heavy)
                .font(.system(size: 30))
                .padding()
            Image("Pikachu")
                .resizable()
                .frame(width: 200, height: 200)
            Text("")
                
                VStack(alignment: .leading ){
            Text("This app features a Pokedex, Rocket Leader counters, and a Pokemon Type weakness selector!")
                .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                .padding()
                
            Text("The Pokedex tab contains a small amount of Pokemon from the Kanto Region at the moment.")
                .fixedSize(horizontal: false, vertical: true)
                .padding()
                
            Text("The Rocket Leader tab shows the leader's Pokemon and what Pokemon type to counter it with.")
                .fixedSize(horizontal: false, vertical: true)
                .padding()
                
            Text("Lastly, with the Counter tab, you can select a Pokemon type to find it's weakness. ")
                .fixedSize(horizontal: false, vertical: true)
                .padding()
            }
                Color(.white)
            }
            .background(Color.white)
        }
    }
}
