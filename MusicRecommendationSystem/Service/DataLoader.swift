//
//  DataLoader.swift
//  MusicRecommendationSystem
//
//  Created by hiiamnnn on 15/11/2564 BE.
//

import Foundation

public class DataLoader: ObservableObject {
    @Published var songLists = [SongList]()

    func loadRockData(completion:@escaping ([SongList]?) -> ()) {
        //url where the JSON file is located
        guard let url = URL(string: "https://gist.githubusercontent.com/hiiamnnn/759c2a4680b500a75e580f47eeacb7bb/raw/e057dd24417e1cde51dbd336a03891fcc1c04032/rockSongList.json") else{
            print("Invalid url...")
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
                let songRockLists = try! JSONDecoder().decode([SongList].self, from: data!)
                print(songRockLists)
                DispatchQueue.main.async {
                    completion(songRockLists)
                }
        }.resume()
    }
    
    func loadJazzData(completion:@escaping ([SongList]?) -> ()) {
        //url where the JSON file is located
        guard let url = URL(string: "https://gist.githubusercontent.com/hiiamnnn/5a93104bd5f63d82508de05d70db1a0d/raw/1187987f66b3a477900fdca742698359f6964f37/jazzSongList.json") else{
            print("Invalid url...")
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
                let songJazzLists = try! JSONDecoder().decode([SongList].self, from: data!)
                print(songJazzLists)
                DispatchQueue.main.async {
                    completion(songJazzLists)
                }
        }.resume()
    }
    
    func loadCountryData(completion:@escaping ([SongList]?) -> ()) {
        //url where the JSON file is located
        guard let url = URL(string: "https://gist.githubusercontent.com/hiiamnnn/efc6aeaf38da4a89afd8df7a00b8baba/raw/103b84d5610cd2c9bfe0ed006fb8eff176d9d9a9/countrySongList.json") else{
            print("Invalid url...")
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
                let songCountryLists = try! JSONDecoder().decode([SongList].self, from: data!)
                print(songCountryLists)
                DispatchQueue.main.async {
                    completion(songCountryLists)
                }
        }.resume()
    }
    
    func loadDiscoData(completion:@escaping ([SongList]?) -> ()) {
        //url where the JSON file is located
        guard let url = URL(string: "https://gist.githubusercontent.com/hiiamnnn/18f941d2334805ec0790ec1474e1b315/raw/ff0f68440adc13d97c3cb72c360139c5bba1a908/discoSongList.json") else{
            print("Invalid url...")
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
                let songDiscoLists = try! JSONDecoder().decode([SongList].self, from: data!)
                print(songDiscoLists)
                DispatchQueue.main.async {
                    completion(songDiscoLists)
                }
        }.resume()
    }
    
    func loadHiphopData(completion:@escaping ([SongList]?) -> ()) {
        //url where the JSON file is located
        guard let url = URL(string: "https://gist.githubusercontent.com/hiiamnnn/b1cfcf956c6c591aa9490961e0ba6c47/raw/28856c04855ee985b40c0f0919d3e632d70fc9d3/hiphopSongList.json") else{
            print("Invalid url...")
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
                let songHiphopLists = try! JSONDecoder().decode([SongList].self, from: data!)
                print(songHiphopLists)
                DispatchQueue.main.async {
                    completion(songHiphopLists)
                }
        }.resume()
    }
    
    func loadRbData(completion:@escaping ([SongList]?) -> ()) {
        //url where the JSON file is located
        guard let url = URL(string: "https://gist.githubusercontent.com/hiiamnnn/f84d363387b25484e00a32cdab5cd4b0/raw/b32dc39dd7ffa5fd0c90863ffc9d14b8524a9216/rbSongList.json") else{
            print("Invalid url...")
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
                let songRbLists = try! JSONDecoder().decode([SongList].self, from: data!)
                print(songRbLists)
                DispatchQueue.main.async {
                    completion(songRbLists)
                }
        }.resume()
    }
}
