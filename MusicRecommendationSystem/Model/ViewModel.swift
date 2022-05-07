//
//  ViewModel.swift
//  MusicRecommendationSystem
//
//  Created by hiiamnnn on 15/11/2564 BE.
//

import Foundation

struct ViewModel: Identifiable {
    
    var view: SongList
    init(view: SongList) {
        self.view = view
    }
    
    var id: UUID {
        return self.view.id
    }
    
    var title: String {
        return self.view.Titles
    }
    
    var artist: String {
        return self.view.Artists
    }
    
    var songTime: String {
        return String(self.view.Times.suffix(4)) //end of time 4 letter
    }
    
    var link: String{
        return self.view.Links
    }
}
