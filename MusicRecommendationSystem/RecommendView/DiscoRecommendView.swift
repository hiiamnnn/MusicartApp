//
//  DiscoRecommendView.swift
//  MusicRecommendationSystem
//
//  Created by hiiamnnn on 15/11/2564 BE.
//

import SwiftUI

struct DiscoRecommendView: View {
    var currentSong : [SongModel] = SongData.recommendedDisco
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                Spacer(minLength: 90)
                Image("PlaylistDisco")
                    .offset(x:5)
                
                ZStack(alignment: .top) {
                    
               
                    //Rectangle 2
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.30000001192092896)))
                    
                        .frame(width: 401.26, height: 600)
                    LazyVStack(alignment: .leading){
                            Spacer(minLength: 10)
                            Text("Recommend for You").font(.custom("Poppins SemiBold", size: 20))
                                
                                
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).tracking(0.5).lineSpacing(5)
                                .offset(x:30)
                                .padding()
                                Spacer()
                        ForEach(currentSong, id: \.id, content: { song in
                            DiscoSongCell(song: song)
                        })
                    }
                    
                }
            }
        }
        .background(Color(#colorLiteral(red: 0.47, green: 0.32, blue: 0.71, alpha: 1)))
        .ignoresSafeArea( edges: .all)
        
    }
}
struct DiscoRecommendView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoRecommendView()
    }
}

struct DiscoSongCell: View {
    var song : SongModel
    var body: some View{
        NavigationLink(
            destination: DiscoPlayerView(song: song),
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
                    Image("disco").padding(.horizontal).frame(width: 68, height: 68)
                    VStack(alignment: .leading) { Text(song.tilte).font(.system(size: 20)).fontWeight(.semibold).multilineTextAlignment(.leading).padding(.bottom, 5.0).offset(x: 15.0)
                        .foregroundColor(Color(#colorLiteral(red: 0.8650925755500793, green: 0.8041666746139526, blue: 1, alpha: 1)))
                        HStack(spacing: 80.0) {
                            Text(song.artist).font(.footnote).foregroundColor(Color(#colorLiteral(red: 0.5969042778015137, green: 0.5315277576446533, blue: 0.7416666746139526, alpha: 1))).frame(width: 150, height: 0, alignment: .leading).offset(x: 15.0)
                            Text(song.songTime).font(.footnote).foregroundColor(Color(#colorLiteral(red: 0.4967765212059021, green: 0.27916663885116577, blue: 1, alpha: 1)))
                        }
                    }
                    Spacer()
                }
            }).buttonStyle(PlainButtonStyle())
    }
}
