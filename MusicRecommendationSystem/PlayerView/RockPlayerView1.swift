//
//  RockPlayerView1.swift
//  MusicRecommendationSystem
//
//  Created by hiiamnnn on 15/11/2564 BE.
//

import Foundation
import SwiftUI
import AVKit
import AVFoundation

struct RockPlayerView1: View {
    
    @State var song : ViewModel
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
                GeometryReader { geometry in
                    VStack(alignment: .leading) {
                        ZStack{
                            ZStack {
                              Image("poster")
                                
                                Text(song.title)
                                    .font(.system(size: 24)).bold()
                                    .foregroundColor(Color.white)
                                    .position(x: 160, y: 428)
                                Text(song.artist)
                                
                                    .font(.system(size: 20))
                                    .foregroundColor(Color.white)
                                    .multilineTextAlignment(.center)
                                    .position(x: 160, y: 471)
                               
                            }.frame(width: 307.0, height: 500, alignment: .center).position(x: 207, y: 290)
                            
                            Button(action: self.playPause, label: {
                                Image(isPlaying ? "pause" : "Group 1881")
                                        }).buttonStyle(PlainButtonStyle()).position(x: 200,y: 700)
                        }
                        
                        ZStack {
                            //recommend
                            NavigationLink(destination: RockRecommendView()){
                                Image("Frame 24")
                            }.buttonStyle(PlainButtonStyle()).position(x: 200, y: 50)
                            //left
                            NavigationLink(destination: DiscoRecommendView()){
                                Image("recommend-L")
                            }.buttonStyle(PlainButtonStyle()).position(x: 30, y: 78)
                            //right
                            NavigationLink(destination:JazzRecommendView()){
                                Image("recommend-R")
                            }.buttonStyle(PlainButtonStyle()).position(x: 368, y: 78)
                        }.frame(width: 414, height: 100)
                    }.frame(width: 414, height: 896)
                    .onAppear(){
                        playMusic(path: song.link)
                    }.ignoresSafeArea()
                }//.padding(30)
            }
        }
        
    }
}
