//
//  DataModel.swift
//  MusicRecommendationSystem
//
//  Created by hiiamnnn on 15/11/2564 BE.
//

import Foundation

struct SongList: Codable, Identifiable {
    let id: UUID = UUID()
    var Titles: String
    var Artists: String
    var Times: String
    var Links: String
}
