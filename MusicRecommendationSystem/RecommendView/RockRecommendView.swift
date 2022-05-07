//
//  RockRecommendView.swift
//  MusicRecommendationSystem
//
//  Created by hiiamnnn on 15/11/2564 BE.
//

import SwiftUI

struct RockRecommendView: View {
    var currentSong : [SongModel] = SongData.recommendedRock
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                //lineSpacing(50.0)
                Spacer(minLength: 90)
                Image("PlaylistRock")
                    .offset(x : 5)
                ZStack(alignment: .top) {
                    //backdrop
                    //Rectangle 2
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.4)))
                    
                        .frame(width: 401.26, height: 600)
                    LazyVStack(alignment: .leading){
                        //Recommend for You
                        Spacer(minLength: 10)
                        Text("Recommend for You").font(.custom("Poppins SemiBold", size: 20))
                            
                            
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).tracking(0.5).lineSpacing(5)
                            .offset(x:30)
                            .padding()
                            Spacer()
                    ForEach(currentSong, id: \.id, content: { song in
                        RockSongCell(song: song)
                    })
                    }
                    
                }
                
            }
        }
        .background(Color(#colorLiteral(red: 0.29411765933036804, green: 0.06666667014360428, blue: 0.11372549086809158, alpha: 1)))
        .ignoresSafeArea( edges: .all)
        
    }
    
}

struct RockRecommendView_Previews: PreviewProvider {
    static var previews: some View {
        RockRecommendView()
    }
}

struct RockSongCell: View {
    var song : SongModel
    //var genres : Genre
    var body: some View{
       
            
            
        NavigationLink(
            destination: RockPlayerView(song: song),
            label: {
                
                
                HStack{
                    Image("play").padding(.horizontal)
                    Image("rock").padding(.horizontal).frame(width: 68, height: 68)
                    VStack(alignment: .leading) { Text(song.tilte).font(.system(size: 20))
                        .foregroundColor(Color(#colorLiteral(red: 0.77, green: 0.66, blue: 0.68, alpha: 1))) .fontWeight(.semibold).multilineTextAlignment(.leading).padding(.bottom, 5.0).offset(x: 15.0)
                        HStack(spacing: 80.0) {
                            Text(song.artist).font(.footnote)
                                .foregroundColor(Color(#colorLiteral(red: 0.52, green: 0.3, blue: 0.35, alpha: 1)))
                                
                            .frame(width: 150, height: 0, alignment: .leading).offset(x: 15.0)
                            Text(song.songTime).font(.footnote).foregroundColor(Color(#colorLiteral(red: 0.75, green: 0.2, blue: 0.11, alpha: 1)))
                        }
                    }
                    Spacer()
                }
            }).buttonStyle(PlainButtonStyle())
    }
    
}
