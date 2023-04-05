//
//  DetailView.swift
//  OtakuApp
//
//  Created by Roger Espinoza on 4/4/23.
//

import SwiftUI

struct DetailView: View {
    let anime:Anime
    
    var body: some View {
        VStack {
            AnimeImage(url: anime.image, size: .large)
            Text(anime.title)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(anime:.test)
    }
}
