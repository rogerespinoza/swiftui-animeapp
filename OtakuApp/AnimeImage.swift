//
//  AnimeImage.swift
//  OtakuApp
//
//  Created by Roger Espinoza on 4/4/23.
//

import SwiftUI
struct AnimeImage: View {
    let url:URL
    enum ImageSize: CGFloat {
        case medium = 100
        case large = 300
    }
    var size: ImageSize = .medium
    
    var body: some View {
        AsyncImage(url: url) { image in
            image
                .resizable()
                .scaledToFit()
                .frame(width: size.rawValue)
                .padding(.vertical, 5)
                .background(.blue)
        } placeholder: {
            Image(systemName: "magazine")
                .resizable()
                .scaledToFit()
                .frame(width: size.rawValue)
                .padding(.vertical, 5)
                .background(.blue)
        }
    }
}

struct AnimeImage_Previews: PreviewProvider {
    static var previews: some View {
        AnimeImage(url: Anime.test.image, size: .large)
    }
}
