//
//  AnimesVM.swift
//  OtakuApp
//
//  Created by Roger Espinoza on 4/4/23.
//

import SwiftUI

final class AnimesVM:ObservableObject {
    
    let persistance = Persistence.shared
    
    @Published var animes:[Anime]
    
    init() {
        do {
            self.animes = try persistance.loadAnimes()
        } catch {
            self.animes = []
        }
    }
}

