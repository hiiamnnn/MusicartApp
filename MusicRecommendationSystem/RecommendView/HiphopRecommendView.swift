//
//  HiphopRecommendView.swift
//  MusicRecommendationSystem
//
//  Created by hiiamnnn on 15/11/2564 BE.
//

import SwiftUI

struct HiphopRecommendView: View {
    var currentSong : [SongModel] = SongData.recommendedHiphop
    //var returnGenre : Genre
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                Spacer(minLength: 90)
                Image("PlaylistHipHop")
                    .offset(x:5)
                
                ZStack(alignment: .top) {
                    
                    //backdrop
                    //Rectangle 2
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color(#colorLiteral(red: 1, green: 0.6708333492279053, blue: 0.6708333492279053, alpha: 0.4000000059604645)))
                    
                        .frame(width: 401.26, height: 600)
                    LazyVStack(alignment: .leading){
                            Spacer(minLength: 10)
                            Text("Recommend for You").font(.custom("Poppins SemiBold", size: 20))
                                
                                
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).tracking(0.5).lineSpacing(5)
                                .offset(x:30)
                                .padding()
                                Spacer()
                        ForEach(currentSong, id: \.id, content: { song in
                            HiphopSongCell(song: song)
                        })
                    }
                }
                //backdrop
                /*.frame(width: 414, height: 600, alignment: .top )
                .background(Color(#colorLiteral(red: 1, green: 0.6708333492279053, blue: 0.6708333492279053, alpha: 0.4000000059604645)))*/
                
            }
        }
        .background(Color(#colorLiteral(red: 0.93, green: 0.45, blue: 0.21, alpha: 1)))
        .ignoresSafeArea( edges: .all)
        /*LazyVStack{
            ForEach(currentSong, id: \.id, content: { song in
                HiphopSongCell(song: song)
            })
        }*/
    }
}

struct HiphopRecommendView_Previews: PreviewProvider {
    static var previews: some View {
        HiphopRecommendView()
    }
}

struct HiphopSongCell: View {
    var song : SongModel
    //var returnGenre : Genre
    var body: some View{
        NavigationLink(
            destination: HiphopPlayerView(song: song),
            label: {
                /*HStack{
                    ZStack{
                        Circle().frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).foregroundColor(.blue)
                        Circle().frame(width: 20, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).foregroundColor(.white)
                    }
                    VStack(alignment: .leading, content: {
                        Text(song.tilte).bold()
                        HStack{
                            Text(song.artist).font(.footnote)
                            Text(song.songTime).font(.footnote)
                        }
                    })
                    Spacer()
                }.padding(20)*/
                HStack{
                    Image("play").padding(.horizontal)
                    Image("hiphop").padding(.horizontal).frame(width: 68, height: 68)
                    VStack(alignment: .leading) { Text(song.tilte).font(.system(size: 20)).fontWeight(.semibold).multilineTextAlignment(.leading).padding(.bottom, 5.0).offset(x: 15.0)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 0.9064815044403076, blue: 0.8583333492279053, alpha: 1)))
                        HStack(spacing: 80.0) {
                            Text(song.artist).font(.footnote).foregroundColor(Color(#colorLiteral(red: 1, green: 0.7772060036659241, blue: 0.6625000238418579, alpha: 1))).frame(width: 150, height: 0, alignment: .leading).offset(x: 15.0)
                            Text(song.songTime).font(.footnote).foregroundColor(Color(#colorLiteral(red: 0.8708333373069763, green: 0.295969694852829, blue: 0, alpha: 1)))
                        }
                    }
                    Spacer()
                }
            }).buttonStyle(PlainButtonStyle())
    }
}
