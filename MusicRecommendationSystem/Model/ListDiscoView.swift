//
//  ListDiscoView.swift
//  MusicRecommendationSystem
//
//  Created by hiiamnnn on 15/11/2564 BE.
//

import Foundation

class ListDiscoView: ObservableObject {
    @Published var views = [ViewModel]()
    
    init() {
        DataLoader().loadDiscoData{ views in
           // let view = view
            if let views = views {
                self.views = views.map(ViewModel.init)
            }
        }
    }
}
