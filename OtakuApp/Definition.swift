//
//  Definition.swift
//  OtakuApp
//
//  Created by Roger Espinoza on 4/4/23.
//

import Foundation


struct Anime:Codable, Identifiable {
    let id = UUID()
    let title:String
    let description:String?
    let year:Int
    let type:String
    let rate_start:String
    let votes:Int
    let status:String
    let followers:Int
    let episodes:Int
    let genres:String?
    let url_anime:URL
    let image:URL
    
    enum CodingKeys: CodingKey {
        case title
        case description
        case year
        case type
        case rate_start
        case votes
        case status
        case followers
        case episodes
        case genres
        case url_anime
        case image
    }
}
