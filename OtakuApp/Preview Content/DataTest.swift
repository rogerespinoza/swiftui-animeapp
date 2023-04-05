//
//  DataTest.swift
//  OtakuApp
//
//  Created by Roger Espinoza on 4/4/23.
//

import Foundation


struct FilePreview:FileLocation {
    var fileURL: URL {
        Bundle.main.url(forResource: "anime", withExtension: "json")!
    }
}

extension Anime {
    static let test = Anime(title: "Dragon Ball Z Pelicula 03: La batalla más grande del mundo esta por comenzar",
                            description: "Una banda de desértores del ejército de Freezer capitaneada por el misterioso Tarles llega a la tierra con una semilla terrible. Una vez plantada, surge un árbol monstruoso que amenaza con absorver toda vida en el planeta...",
                            year: 1990,
                            type: "Película",
                            rate_start: "3.9",
                            votes: 173,
                            status: "Finalizado",
                            followers: 1090,
                            episodes: 1,
                            genres: "Aventuras,Ciencia Ficción,Comedia,Fantasía,Shounen",
                            url_anime: URL(string: "https://www3.animeflv.net/anime/dragon-ball-z-pelicula-3")!,
                            image: URL(string:"https://www3.animeflv.net/uploads/animes/covers/1104.jpg")!)
}



