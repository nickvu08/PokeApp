//
//  RocketLeader.swift
//  PokeDex
//
//  Created by Nicholas Vu on 5/6/21.
//

import SwiftUI

struct ImageModel: Identifiable {
    let id: Int
    let imageName: String
}

struct RocketLeaders: View {

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            Image("PGRocketLeaders")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 500)
            ZStack {
                
                Spacer()
                VStack {
                    
                    Group{
                    Text("")
                    Text("Cliff")
                        .fontWeight(.heavy)
                        .font(.largeTitle)
                    
                    Image("Cliff")
                        .padding()
                        .frame(alignment:.center)
                    }
                    Spacer()
                    
                    VStack(alignment: .leading){
                        Group {
                        Text("First Pokemon:")
                            .fontWeight(.heavy)
                        Text("Aerodactyl: Water, Ice, Electric, Rock, Steel")
                        Text("")
                        }.lineSpacing(10)
                        
                        Group {
                        Text("Second Pokemon:")
                            .fontWeight(.heavy)
                        Text("Gallade: Fairy, Flying, Ghost")
                        Text("Cradily: Bug, Fighting, Steel, Ice")
                        Text("Slowking: Dark, Ghost")
                        Text("")
                        }
                        
                        Group {
                        Text("Third Pokemon:")
                            .fontWeight(.heavy)
                        Text("Tyranitar: Fighting, Fairy")
                        Text("Mamoswine: Fighting, Fire, Grass, Water, Steel")
                        Text("Dusknoir: Dark, Ghost")
                        }
                    }
                Divider()
                    
                    Text("Arlo")
                        .fontWeight(.heavy)
                        .font(.largeTitle)
                    
                    Image("Arlo")
                        .padding()
                        .frame(alignment:.center)
                    
                    VStack(alignment: .leading){
                        Group {
                        Text("First Pokemon:")
                            .fontWeight(.heavy)
                        Text("Beldum: Fire, Ground, Ghost, Dark")
                        Text("")
                        }
                        
                        Group {
                        Text("Second Pokemon:")
                            .fontWeight(.heavy)
                        Text("Gardevoir: Poison, Ghost, Steel")
                        Text("Infernape: Water, Flying, Ground, Psychic")
                        Text("Aggron: Fighting, Ground, Water")
                        Text("")
                        }
                        
                        Group {
                        Text("Third Pokemon:")
                            .fontWeight(.heavy)
                        Text("Scizor: Fire")
                        Text("Armaldo: Water, Rock, Steel")
                        Text("Salamence: Rock, Ice, Dragon, Fairy")
                        }
                    }
                Divider()
                    
                    Group {
                    Text("Sierra")
                        .fontWeight(.heavy)
                        .font(.largeTitle)
                    
                    Image("Sierra")
                        .padding()
                        .frame(alignment:.center)
                    }
                    
                    VStack(alignment: .leading){
                        Group {
                        Text("First Pokemon:")
                            .fontWeight(.heavy)
                        Text("Carvanha: Grass, Fighting, Electric, Fairy")
                        Text("")
                        }.lineSpacing(10)
                        
                        Group {
                        Text("Second Pokemon:")
                            .fontWeight(.heavy)
                        Text("Hippowdon: Grass, Water, Ice")
                        Text("Porygon-Z: Fighting")
                        Text("Mismagius: Dark, Ghost")
                        Text("")
                        }
                        
                        Group {
                        Text("Third Pokemon:")
                            .fontWeight(.heavy)
                        Text("Houndoom: Water, Fighting, Ground, Rock")
                        Text("Flygon: Ice, Fairy, Dragon")
                        Text("Walrein: Grass, Electric, Rock, Fighting")
                        }
                    }
                    
                    
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
        }
        .navigationTitle("Rocket Leaders")
        
}
struct RocketLeaders_Previews: PreviewProvider {
    static var previews: some View {
        RocketLeaders()
    }
}
}
