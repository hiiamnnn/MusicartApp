//
//  DiscoGenreView.swift
//  MusicRecommendationSystem
//
//  Created by hiiamnnn on 15/11/2564 BE.
//

import SwiftUI

struct DiscoGenreView: View {
        var body: some View {
            ScrollView(.vertical, showsIndicators: false){
                VStack{
                    //poster's genre
                    ComponentofDiscoGenreView()
                    //all song keyword
                    HStack() {
                        Text("All")
                            .font(.system(size: 24))
                            .fontWeight(.bold)
                            .foregroundColor(Color(#colorLiteral(red: 0.06, green: 0.12, blue: 0.21, alpha: 1))).offset(x: -120, y: -30)
                        Text("Songs").font(.system(size: 24)).fontWeight(.bold)
                            .foregroundColor(Color(#colorLiteral(red: 0.47, green: 0.32, blue: 0.71, alpha: 1))).offset(x: -120, y: -30)
                    }
                   //show list song
                    ListDiscoSongView()
                }
            }.edgesIgnoringSafeArea(.top)
        }
    }

struct DiscoGenreView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoGenreView()
    }
}

struct ComponentofDiscoGenreView: View {
    var body: some View {
        ZStack{
            //photo disco genre
            Image("discoList")
                .resizable()
                .scaledToFit()
            HStack{
                //description's song disco genre
                VStack(alignment: .leading, spacing: 5){
                    //Playlist Title
                    Text("Songs to Disco Genre").font(.title).fontWeight(.bold).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    //Description
                    Text("Or dance music, groove-oriented sound and funk, electronic, future funk, EDM, nu-disco.").font(.body).foregroundColor(Color(#colorLiteral(red: 0.83, green: 0.83, blue: 0.83, alpha: 1))).tracking(0.5).padding(.trailing)
                }.padding(.all).position(x: 170, y: 340)
                
                //play button
                Button(action: { print("Press play button of Disco genre")}, label: {
                    Image("discoButton")
                })
                    .buttonStyle(PlainButtonStyle())
                    .position(x: 40, y: 150)
                    .frame(width: 100, height: 100)
            }
        }
    }
}

struct ListDiscoSongView: View {
    @ObservedObject private var listView = ListDiscoView()
    var body: some View {
        /*List(self.listView.views, id: \.id) { view in
            Button(action: { print("Select song")}, label: {
                Image("disco").padding(.horizontal).frame(width: 68, height: 68)
            }).buttonStyle(PlainButtonStyle())
            VStack(alignment: .leading) { Text(view.title).font(.system(size: 20)).fontWeight(.semibold).multilineTextAlignment(.leading).padding(.bottom, 5.0).offset(x: 15.0)
                HStack(spacing: 105.0) {
                    Text(view.artist).font(.footnote).foregroundColor(.gray).frame(width: 150, height: 0, alignment: .leading).offset(x: 15.0)
                    Text(view.songTime).font(.footnote).foregroundColor(Color(#colorLiteral(red: 0.47, green: 0.32, blue: 0.71, alpha: 1)))
                }
            }
            
        }.padding(.vertical, 10.0).frame(width: 414, height: 3250)
            .offset(x:0, y:-40)
            .onAppear() { //set list no scroll, use only scroll frome ScrollView
                UITableView.appearance().isScrollEnabled = false
        }*/
        LazyVStack{
            ForEach(self.listView.views, id: \.id, content: { view in
                NavigationLink(
                    destination: DiscoPlayerView1(song: view),
                    label: {
                        HStack {
                            //Button(action: { print("Select song")}, label: {
                                Image("disco").padding(.horizontal).frame(width: 68, height: 68)
                            //}).buttonStyle(PlainButtonStyle())
                            VStack(alignment: .leading) { Text(view.title).font(.system(size: 20)).fontWeight(.semibold).multilineTextAlignment(.leading).padding(.bottom, 5.0).offset(x: 15.0)
                                HStack(spacing: 105.0) {
                                    Text(view.artist).font(.footnote).foregroundColor(.gray).frame(width: 150, height: 0, alignment: .leading).offset(x: 15.0)
                                    Text(view.songTime).font(.footnote).foregroundColor(Color(#colorLiteral(red: 0.47, green: 0.32, blue: 0.71, alpha: 1)))
                                }
                            }
                            Spacer()
                        }.padding(.horizontal).position(x: 215, y: 30)
                    }).buttonStyle(PlainButtonStyle())
            }).padding(.bottom, 20.0)
        }
    }
}
