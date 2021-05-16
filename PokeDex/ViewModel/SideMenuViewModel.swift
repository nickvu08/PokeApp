//
//  SideMenuViewModel.swift
//  PokeDex
//
//  Created by Nicholas Vu on 4/7/21.
//

import Foundation

enum SideMenuViewModel: Int, CaseIterable {
    case pokeDex
    case rLeaders
    case counters
    
    var title: String {
        switch self {
        case .pokeDex: return "PokeDex"
        case .rLeaders: return "Rocket Leaders"
        case .counters: return "Counters"
        }
    }
    var imageName: String {
        switch self {
        case .pokeDex: return "scroll.fill"
        case .rLeaders: return "person.fill"
        case .counters: return "shield.slash.fill"
        }
    }
}
