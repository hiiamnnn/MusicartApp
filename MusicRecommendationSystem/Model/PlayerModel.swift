//
//  PlayerModel.swift
//  MusicRecommendationSystem
//
//  Created by hiiamnnn on 15/11/2564 BE.
//

import Foundation
import AVFoundation
import AVKit

var player: AVPlayer!
var playing = false
extension AVPlayer{
    var isPlaying:Bool{
        return rate != 0 && error == nil
    }
}

func playMusic(path : String) {
    
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback)
        } catch {
            print(error)
        }
        let links = URL(string: path)
        let playerItem: AVPlayerItem = AVPlayerItem(url: links!)
        player = AVPlayer(playerItem: playerItem)
        player.play()
    
}
