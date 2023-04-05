//
//  ContentView.swift
//  OtakuApp
//
//  Created by Roger Espinoza on 4/4/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var animesVM = AnimesVM()
    
    var body: some View {
        NavigationStack {
            List(animesVM.animes) { anime in
                AnimeCell(anime: anime)
            }
            .navigationTitle("Animes")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


