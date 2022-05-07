//
//  makePOSTRequest.swift
//  MusicRecommendationSystem
//
//  Created by hiiamnnn on 15/11/2564 BE.
//

import Foundation
import UIKit

// GET, POST, PUT, etc.

func makePOSTRequest(){
    guard let url = URL(string: "http://127.0.0.1:5000/predict")
    // please input link here
          else {
        return()
    }
    
   //print("Making api call ...")
    var request = URLRequest(url: url)
    //method, body, headers
    request.httpMethod = "POST"
    request.setValue("application/jason", forHTTPHeaderField: "Content-Type")
    
    //Make the request
    /*let task = URLSession.shared.dataTask(with: request) { data, _, error in
        guard let data = data, error == nil
        else {
            return
        }
        do {
            response = try JSONDecoder().decode(Response.self, from: data)
            //print("Sucess")
            print("SUCCESS: \(response)")
        }
        catch {
            print(error)
        }
    }*/
    let task = URLSession.shared.dataTask(with: request) { data, _, error in
        guard let data = data, error == nil else {
            return
        }
        do {
            var response = try JSONDecoder().decode(Response.self, from: data)

            //genre = response.genre
            //Response.genre = res
            //Response.init(genre: response.genre)
            //print("Predict: \(genre)")
            generation = Response(genre: response.genre)
            pred.Update(toUpdate: generation.genre)
            //var generation = Response(genre: response.genre)
            print("SUCCESS: \(pred.g)")
            //print(g.genre)
            //print(generation.count)
            //let type = String(genre)
            //print(genre)
        }
        catch {
            print(error)
        }
    }
    task.resume()
    //print("this is \(genre)")
    
    //return genre
    //task.resume()
}

struct Response: Codable { //3
    var genre: String
}

class Predict{
    var g = "genre"
    func Update(toUpdate: String) {
        self.g = toUpdate
    }
}
