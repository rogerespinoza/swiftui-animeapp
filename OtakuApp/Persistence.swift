//
//  Persistence.swift
//  OtakuApp
//
//  Created by Roger Espinoza on 4/4/23.
//

import Foundation

protocol FileLocation {
    var fileURL:URL { get }
}

struct FileProduction:FileLocation {
    var fileURL: URL {
        Bundle.main.url(forResource: "anime", withExtension: "json")!
    }
}

final class Persistence {
    static let shared = Persistence()
    let url = Bundle.main.url(forResource: "anime", withExtension: "json")!
    
    func testFuc() {
        print("hkjk")
    }
    
    func loadAnimes() throws -> [Anime] {
        let data = try Data(contentsOf: url)
        return try JSONDecoder().decode([Anime].self, from: data)
    }
    
}

