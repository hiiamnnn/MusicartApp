//
//  CountryRecommendView.swift
//  MusicRecommendationSystem
//
//  Created by hiiamnnn on 15/11/2564 BE.
//

import SwiftUI

struct CountryRecommendView: View {
    var currentSong : [SongModel] = SongData.recommendedCountry
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                Spacer(minLength: 90)
                Image("PlaylistCountry")
                    .offset(x: 5)
                ZStack(alignment: .top) {
                    
                    //backdrop
                    //Rectangle 2
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.30000001192092896)))
                    
                        .frame(width: 401.26, height: 600)
                    LazyVStack(alignment: .leading){
                            Spacer(minLength: 10)
                            Text("Recommend for You").font(.custom("Poppins SemiBold", size: 20))
                                
                                
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).tracking(0.5).lineSpacing(5)
                                .offset(x:30)
                                .padding()
                                Spacer()
                        ForEach(currentSong, id: \.id, content: { song in
                            CountrySongCell(song: song)
                        })
                    }
                }
                
            }
        }
        .background(Color(#colorLiteral(red: 0.96, green: 0.71, blue: 0.33, alpha: 1)))
        .ignoresSafeArea( edges: .all)
        /*LazyVStack{
            ForEach(currentSong, id: \.id, content: { song in
                CountrySongCell(song: song)
            })
        }*/
    }
}

struct CountryRecommendView_Previews: PreviewProvider {
    static var previews: some View {
        CountryRecommendView()
    }
}

struct CountrySongCell: View {
    var song : SongModel
    var body: some View{
        NavigationLink(
            destination: CountryPlayerView(song: song),
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
                    Image("country").padding(.horizontal).frame(width: 68, height: 68)
                    VStack(alignment: .leading) { Text(song.tilte).font(.system(size: 20)).fontWeight(.semibold).multilineTextAlignment(.leading).padding(.bottom, 5.0).offset(x: 15.0)
                        .foregroundColor(Color(#colorLiteral(red: 0.9058823585510254, green: 0.5529412031173706, blue: 0.007843137718737125, alpha: 1)))
                        HStack(spacing: 80.0) {
                            Text(song.artist).font(.footnote).foregroundColor(Color(#colorLiteral(red: 0.8958333134651184, green: 0.650848388671875, blue: 0.27248263359069824, alpha: 1))).frame(width: 150, height: 0, alignment: .leading).offset(x: 15.0)
                            Text(song.songTime).font(.footnote).foregroundColor(Color(#colorLiteral(red: 1, green: 0.6100630760192871, blue: 0, alpha: 1)))
                        }
                    }
                    Spacer()
                }
            }).buttonStyle(PlainButtonStyle())
    }
}
