//
//  RbRecommendView.swift
//  MusicRecommendationSystem
//
//  Created by hiiamnnn on 15/11/2564 BE.
//

import SwiftUI

struct RbRecommendView: View {
    var currentSong : [SongModel] = SongData.recommendedRb
    
    var body: some View {
        
        ScrollView{
            VStack(alignment: .leading){
                Spacer(minLength: 90)
                Image("PlaylistR&B")
                    .offset(x : 5)
                ZStack(alignment: .top) {
                    
                    //backdrop
                    //Rectangle 2
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color(#colorLiteral(red: 0.3803921639919281, green: 0.7529411911964417, blue: 0.4901960790157318, alpha: 0.4000000059604645)))
                    
                        .frame(width: 401.26, height: 600)
                    LazyVStack(alignment: .leading){
                            Spacer(minLength: 10)
                            Text("Recommend for You").font(.custom("Poppins SemiBold", size: 20))
                                
                                
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).tracking(0.5).lineSpacing(5)
                                .offset(x:30)
                                .padding()
                                Spacer()
                        ForEach(currentSong, id: \.id, content: { song in
                            RbSongCell(song: song)
                        })
                    }
                }
               
            }
        }
        .background(Color(#colorLiteral(red: 0.56, green: 0.97, blue: 0.76, alpha: 1)))
        .ignoresSafeArea( edges: .all)
        /*LazyVStack{
            ForEach(currentSong, id: \.id, content: { song in
                RbSongCell(song: song)
            })
        }*/
    }
}

struct RbRecommendView_Previews: PreviewProvider {
    static var previews: some View {
        RbRecommendView()
    }
}

struct RbSongCell: View {
    var song : SongModel
    var body: some View{
        NavigationLink(
            destination: RbPlayerView(song: song),
            label: {
                
                
                HStack{
                    Image("play").padding(.horizontal)
                    Image("r&b").padding(.horizontal).frame(width: 68, height: 68)
                    VStack(alignment: .leading) { Text(song.tilte).font(.system(size: 20)).fontWeight(.semibold).multilineTextAlignment(.leading).padding(.bottom, 5.0).offset(x: 15.0)
                        .foregroundColor(Color(#colorLiteral(red: 0.8627451062202454, green: 1, blue: 0.9019607901573181, alpha: 1)))
                        HStack(spacing: 80.0) {
                            Text(song.artist).font(.footnote).foregroundColor(Color(#colorLiteral(red: 0.3804166615009308, green: 0.6916666626930237, blue: 0.4693452715873718, alpha: 1))).frame(width: 150, height: 0, alignment: .leading).offset(x: 15.0)
                            Text(song.songTime).font(.footnote).foregroundColor(Color(#colorLiteral(red: 0, green: 0.737500011920929, blue: 0.21071437001228333, alpha: 1)))
                        }
                    }
                    Spacer()
                }
            }).buttonStyle(PlainButtonStyle())
    }
}
