//
//  JazzRecommendView.swift
//  MusicRecommendationSystem
//
//  Created by hiiamnnn on 15/11/2564 BE.
//

import SwiftUI

struct JazzRecommendView: View {
    var currentSong : [SongModel] = SongData.recommendedJazz
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                Spacer(minLength: 90)
                Image("PlaylistJazz")
                    .offset(x: 5)
                ZStack(alignment: .top) {
                    
                    //backdrop
                    //Rectangle 2
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color(#colorLiteral(red: 1, green: 0.8125, blue: 0.8125, alpha: 0.4000000059604645)))
                    
                        .frame(width: 401.26, height: 600)
                    LazyVStack(alignment: .leading){
                            Spacer(minLength: 10)
                            Text("Recommend for You").font(.custom("Poppins SemiBold", size: 20))
                                
                                
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).tracking(0.5).lineSpacing(5)
                                .offset(x:30)
                                .padding()
                                Spacer()
                        ForEach(currentSong, id: \.id, content: { song in
                            JazzSongCell(song: song)
                        })
                    }
                }
                //backdrop
               /* .frame(width: 414, height: 600, alignment: .top )
                .background(Color(#colorLiteral(red: 1, green: 0.8125, blue: 0.8125, alpha: 0.4000000059604645)))*/
            }
        }
        .background(Color(#colorLiteral(red: 0.8823529481887817, green: 0.5568627715110779, blue: 0.6901960968971252, alpha: 1)))
        .ignoresSafeArea( edges: .all)
        
    }
}

struct JazzRecommendView_Previews: PreviewProvider {
    static var previews: some View {
        JazzRecommendView()
    }
}

struct JazzSongCell: View {
    var song : SongModel
    var body: some View{
        NavigationLink(
            destination: JazzPlayerView(song: song),
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
                    Image("jazz").padding(.horizontal).frame(width: 68, height: 68)
                    VStack(alignment: .leading) { Text(song.tilte).font(.system(size: 20)).fontWeight(.semibold).multilineTextAlignment(.leading).padding(.bottom, 5.0).offset(x: 15.0)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 0.8941176533699036, blue: 0.9176470637321472, alpha: 1)))
                        HStack(spacing: 80.0) {
                            Text(song.artist).font(.footnote).frame(width: 150, height: 0, alignment: .leading).offset(x: 15.0)
                                .foregroundColor(Color(#colorLiteral(red: 0.8125, green: 0.3486979305744171, blue: 0.5386890769004822, alpha: 1)))
                            Text(song.songTime).font(.footnote).foregroundColor(Color(#colorLiteral(red: 0.9208333492279053, green: 0, blue: 0.3745763599872589, alpha: 1)))
                        }
                    }
                    Spacer()
                }
            }).buttonStyle(PlainButtonStyle())
    }
}
