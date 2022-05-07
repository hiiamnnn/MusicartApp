//
//  ContentView.swift
//  MusicRecommendationSystem
//
//  Created by hiiamnnn on 14/11/2564 BE.
//

import SwiftUI
import Firebase
import FirebaseStorage
import Combine

let FILE_NAME = "file.mp3"

var pred = Predict()
var generation = Response(genre: "rock")
//var genre = ""
//var generation = makePOSTRequest()

/*struct generation {
    var genre: String
}*/

struct ContentView: View {
    var body: some View {
        NavigationView{
            ScrollView {
                VStack (alignment: .leading) {
                    HStack {
                    //Genre
                        Text("Genre").font(.system(size: 40)).fontWeight(.bold)
                        .foregroundColor(Color(#colorLiteral(red: 0.21, green: 0.19, blue: 0.19, alpha: 1)))
                        .position(x: 85, y: -20)
                        
                    //upload your files
                        Text("upload your files ").font(.footnote)
                            .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.27)))
                            .position(x: 120, y: -10)
                            .frame(width: 110, height: 18)
                    //upload
                        NavigationLink(
                            destination: Home()
                            ,
                            label: {
                                Image("uploadButton").frame(width: 54, height: 54).position(x: 85, y:-10)
                            })
                        
                    }.padding()
                    .frame(width: 428, height: 54, alignment: .leading)
                    
                    //banner
                    Image("banner")
                        .frame(width: 428, height: 183, alignment: .leading)
                        .position(x: 257, y: 80)
                    
                    //Rock
                    NavigationLink(destination: RockGenreView()){
                        HStack {
                            Image("ROCK_H")

                                .offset(x: 40, y: 10)
                            VStack(alignment: .leading, spacing: 12.0) {
                            //ROCK
                                Text("ROCK").font(.title).bold().foregroundColor(Color(#colorLiteral(red: 0.21, green: 0.19, blue: 0.19, alpha: 1)))
                                    .offset(x:20, y: 10)
                              
                            //Let's rock our heads to th...
                                Text("Let's rock our heads to\nthe song, let's go").font(.footnote).foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)))
                                    .offset(x: 20, y: 10)
                            }
                        }
                    }.buttonStyle(PlainButtonStyle())
                    
                    //Jazz
                    NavigationLink(destination: JazzGenreView()){
                       HStack {
                            Image("JAZZ_H")
                                .offset(x: 40, y: 10)
                            VStack(alignment: .leading, spacing: 12.0) {
                            //Jazz
                                Text("JAZZ").font(.title).bold().foregroundColor(Color(#colorLiteral(red: 0.21, green: 0.19, blue: 0.19, alpha: 1)))
                                    .offset(x:20, y: 10)
                                    
                            //jazz text
                                Text("Afternoon with the sound \nof the saxophone").font(.footnote).foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)))
                                    .offset(x:20, y: 10)                    }
                        }
                    }.buttonStyle(PlainButtonStyle())
                    
                    //R&B
                    NavigationLink(destination: RbGenreView()){
                        HStack {
                            Image("R&B_H")
                                .offset(x:40, y: 10)
                            
                            VStack(alignment: .leading, spacing: 12.0) {
                            //R&B
                                Text("R&B").font(.title).bold().foregroundColor(Color(#colorLiteral(red: 0.21, green: 0.19, blue: 0.19, alpha: 1)))
                                    .offset(x:20, y: 10)
                            //Lisening to chilling music
                                Text("Lisening to chilling music").font(.footnote).foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)))
                                    .offset(x:20, y: 10)
                            }
                        }
                    }.buttonStyle(PlainButtonStyle())
                        
                    //HipHop
                    NavigationLink(destination: HiphopGenreView()){
                        HStack {
                            Image("HIPHOP_H-2")
                                .offset(x:40, y: 10)
                            
                            VStack(alignment: .leading, spacing: 12.0) {
                            //HIPHOP
                                Text("HIPHOP").font(.title).bold().foregroundColor(Color(#colorLiteral(red: 0.21, green: 0.19, blue: 0.19, alpha: 1)))
                                    .offset(x:20, y: 10)
                            //Enjoy the fun rhythm
                                Text("Enjoy the fun rhythm").font(.footnote).foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)))
                                    .offset(x:20, y: 10)
                                
                            }
                        }
                    }.buttonStyle(PlainButtonStyle())
                    
                    //Country
                    NavigationLink(destination: CountryGenreView()){
                        HStack {
                            Image("COUNTRY_H-2")
                                .offset(x:40, y: 10)
                            
                            VStack(alignment: .leading, spacing: 12.0) {
                            //Country
                                Text("COUNTRY").font(.title).bold().foregroundColor(Color(#colorLiteral(red: 0.21, green: 0.19, blue: 0.19, alpha: 1)))
                                    .offset(x:20, y: 10)
                                    
                            //country
                                Text("It's like going back to your \nhometown.").font(.footnote).foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)))
                                    .offset(x:20, y: 10)
                            }
                        }
                    }.buttonStyle(PlainButtonStyle())
                        
                    //Disco
                    NavigationLink(destination: DiscoGenreView()){
                        HStack {
                            Image("DISCO_H-2")
                                .offset(x:40, y: 10)
                            VStack(alignment: .leading, spacing: 12.0) {
                            //DISCO
                                Text("DISCO").font(.title).bold().foregroundColor(Color(#colorLiteral(red: 0.21, green: 0.19, blue: 0.19, alpha: 1)))
                                    .offset(x:20, y: 10)
                                    
                            //Let's go back to age
                                Text("Let's go back to age").font(.footnote).foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)))
                                    .offset(x:20, y: 10)
                            }
         
                        }
                    }.buttonStyle(PlainButtonStyle())
                }
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home: View {
    @State var fileName = ""
    @State var openFile = false

    var body: some View{
        VStack(alignment : .center,spacing:25){
            //Upload your files
            Text("Upload your files").font(.system(size: 24)).fontWeight(.medium)
            //file should be .WAV
            Text("file should be .mp3").font(.system(size: 12)).foregroundColor(Color(#colorLiteral(red: 0.8, green: 0.8, blue: 0.8, alpha: 1)))
                .offset(y:-20)
                Button(action: {openFile.toggle()}, label: {
                    Image("upload")
                
                })
            
                Text("Uploaded File")
                    .offset(x: -120 )
                Image("filepic")
                    .offset(x: -145)
                Text(fileName)
                    .fontWeight(.bold)
                    .offset(x: -60, y: -70)
            
            HStack(spacing: 20){
                Button(action: {
                    uploadAudio()
                })
                { Image("uploadButton-1") }
                
                Button(action: {
                    makePOSTRequest()
                    //let generation = makePOSTRequest()
                    //Success()
                    //var generation: Response /*1*/
                    
                    //var generation = [Response]() /*1.1*/
                    /*init(generation: Response){
                        self.generation = generation
                    }
                    var genre: String{
                        return generation.genre
                    }*/
                })
                { Image("GenButton") }
                
            }
            NavigationLink(
                    destination:
                        Success() /*2*/
                    ,
                    label:{
                        Image("doneButton")
            })
        }
       
        .fileImporter(isPresented: $openFile, allowedContentTypes: [.audio]){
            (res) in
            do{
                let  fileUrl = try res.get()
                //print(fileUrl)
                //getting fileName
                self.fileName = fileUrl.lastPathComponent
            }
            catch{
               
                print("error reading docs")
                print(error.localizedDescription)
            }
            
        }
    }
    
}

struct Success : View{
    //link from firebase (link in file makePOSTRequest)
    //var generation: Response /*1*/
    //var generation = Predicted.self
    //generation.genre = makePOSTRequest()
    //var generation = [Response]() /*1.1*/
    //var generation = Response(genre: Self.genre)
   /* init(generation: Response){
        self.generation = generation
    }
    var genre: String{
        return generation.genre
    }*/

    //var pred = Array<Predicted>()
    //Example /*2*/
    //var genre = "rock"
    //var genre = pred.Update(toUpdate: pred.g)
    
    var body: some View{
            VStack{
                
                /*1*/
                
                /*if generation.genre.contains("rock"){
                    RockRecommendView()
                }
                else if generation.genre.contains("jazz"){
                    JazzRecommendView()
                }
                 else if generation.genre.contains("rhythmandblues"){
                     RbRecommendView()
                 }
                 else if generation.genre.contains("hiphop"){
                     HiphopRecommendView()
                 }
                 else if generation.genre.contains("country"){
                     CountryRecommendView()
                 }
                 else if generation.genre.contains("disco") {
                    DiscoRecommendView()
                 }
                else{// case no file
                    VStack {
                        //Text("")
                            
                    }
                    .navigationTitle("Not   Found")
                   
                }*/
                
 
                /*1.1*/
                
                /*if genre.contains("rock"){
                    RockRecommendView()
                }
                else if genre.contains("jazz"){
                    JazzRecommendView()
                }
                else if genre.contains("rhythmandblues"){
                     RbRecommendView()
                 }
                else if genre.contains("hiphop"){
                     HiphopRecommendView()
                 }
                else if genre.contains("country"){
                     CountryRecommendView()
                 }
                else if genre.contains("disco") {
                    DiscoRecommendView()
                 }
                else{// case no file
                    VStack {
                        //Text("")
                            
                    }
                    .navigationTitle("Not   Found")
                   
                }*/
                 
                if pred.g.contains("rock"){
                    RockRecommendView()
                }
                else if pred.g.contains("jazz"){
                    JazzRecommendView()
                }
                else if pred.g.contains("rhythmandblues"){
                     RbRecommendView()
                 }
                else if pred.g.contains("hiphop"){
                     HiphopRecommendView()
                 }
                else if pred.g.contains("country"){
                     CountryRecommendView()
                 }
                else if pred.g.contains("disco") {
                    DiscoRecommendView()
                 }
                else{// case no file
                    VStack {
                        //Text("")
                            
                    }
                    .navigationTitle("Not   Found")
                   
                }
                 
                
                /*2*/
                /*if generation.contains("rock"){
                    RockRecommendView()
                }
                else if generation.contains("jazz"){
                    JazzRecommendView()
                }
                 else if generation.contains("rhythmandblues"){
                     RbRecommendView()
                 }
                 else if generation.contains("hiphop"){
                     HiphopRecommendView()
                 }
                 else if generation.contains("country"){
                     CountryRecommendView()
                 }
                 else if generation.contains("disco") {
                    DiscoRecommendView()
                 }
                else{// case no file
                    VStack {
                        //Text("")
                     //Text(generation)
                    }
                    .navigationTitle("Not   Found")
                   
                }*/
        }
    }
}


func uploadAudio() {
    FirebaseApp.configure()
    //for Fame only
    guard let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else { return }
    do {
        let directoryContents = try FileManager.default.contentsOfDirectory(at: documentsDirectory, includingPropertiesForKeys: nil, options: [])
        // Print the urls of the files contained in the documents directory
        print(directoryContents)
    } catch {
        print("Could not search for urls of files in documents directory: (error)")
    }
    
    let manager = FileManager.default
    
    var spaceRef = Storage.storage().reference(withPath: "file.mp3")
    
    //"/Users/icp_pat/Desktop/TestUpload/TestUpload/file.mp3"
    let data = NSData(contentsOfFile: "/Users/aomms/Library/Developer/CoreSimulator/Devices/A7E2880F-F2E5-4C79-AD3E-27F488F7F1CD/data/Containers/Shared/AppGroup/F18597E5-02FA-45FA-BC73-D09C34B03EED/File Provider Storage/MyMusic/File.mp3") //assuming filePath is a valid path
   
    let metadata = StorageMetadata()
    metadata.contentType = "audio/mpeg"
   
    // Upload the file to the path "images/rivers.jpg"
    _ = spaceRef.putData(data as! Data, metadata: metadata) { (metadata, error) in
        guard let metadata = metadata
        else {
        // Uh-oh, an error occurred!
        return
      }
        print("Upload Success")
    }
}


