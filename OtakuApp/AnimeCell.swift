//
//  AnimeCell.swift
//  OtakuApp
//
//  Created by Roger Espinoza on 4/4/23.
//

import SwiftUI

struct AnimeCell: View {
    var anime: Anime
    
    var body: some View {
        HStack {
            AnimeImage(url: anime.image)
            VStack {
                Text(anime.title )
                Text(anime.genres ?? "" )
                HStack {
                    Text(anime.rate_start)
                    Text("\(anime.year)")
                }
                
            }
        }
    }
}

struct AnimeCell_Previews: PreviewProvider {
    static var previews: some View {
        AnimeCell(anime: .test)
            .padding()
    }
}
