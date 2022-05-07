//
//  RbPlayerView.swift
//  MusicRecommendationSystem
//
//  Created by hiiamnnn on 15/11/2564 BE.
//

import Foundation
import SwiftUI
import AVKit
import AVFoundation

struct RbPlayerView: View {
    var song : SongModel
    @State var isPlaying : Bool = true
    
    func playPause(){
        self.isPlaying.toggle()
        if isPlaying == false {
            player.pause()
        }
        else{
            player.play()
        }
    }
    
    var body: some View {
        VStack{
            GeometryReader { geometry in
                VStack(alignment: .leading) {
                    ZStack{
                        ZStack {
                          Image("posterR&B")
                            
                            Text(song.tilte)
                                .font(.system(size: 24)).bold()
                                .foregroundColor(Color.white)
                                .position(x: 160, y: 428)
                            
                            Text(song.artist)
                                .font(.system(size: 20))
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                                .position(x: 160, y: 471)
                           
                        }
                        .frame(width: 307.0, height: 500, alignment: .center).position(x: 207, y: 290)
                        
                        Button(action:
                                    playPause , label: {
                            Image(isPlaying ? "pause-4" : "Group 1890")
                                    }).buttonStyle(PlainButtonStyle()).position(x: 200,y: 700)
                    }
                    
                    ZStack {
                        //recommend
                        NavigationLink(destination: RbRecommendView()){
                            Image("Frame 25")
                        }.buttonStyle(PlainButtonStyle()).position(x: 200, y: 50)
                        //left
                        NavigationLink(destination: HiphopRecommendView()){
                            Image("recommend-L-4")
                        }.buttonStyle(PlainButtonStyle()).position(x: 30, y: 78)
                        //right
                        NavigationLink(destination: CountryRecommendView()){
                            Image("recommend-R-4")
                        }.buttonStyle(PlainButtonStyle()).position(x: 368, y: 78)
                    }.frame(width: 414, height: 100)
                }.frame(width: 414, height: 896)
                .onAppear(){
                    playMusic(path: song.links)
                }.ignoresSafeArea()
            }//.padding(30)
        }
        
    }
}
