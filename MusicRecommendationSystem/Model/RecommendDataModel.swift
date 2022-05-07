//
//  RecommendDataModel.swift
//  MusicRecommendationSystem
//
//  Created by hiiamnnn on 15/11/2564 BE.
//

import Foundation

struct SongModel :Hashable {
    let id = UUID()
    var tilte: String
    var artist: String
    var songTime: String
    var links: String
}

struct SongData {
    static let recommendedRock = [SongModel(tilte: "Zombie", artist: "The Cranberries", songTime: "5:08", links:"https://drive.google.com/uc?export=open&id=1e3RIFd5z_mDESVV86QBdmfMmFkZIOCUY"),
                           SongModel(tilte: "River", artist: "Bishop Briggs", songTime: "3:35", links: "https://drive.google.com/uc?export=open&id=15P4oQUd3hdIp0748XRQNaRyfvSOg3R6b"),
                           SongModel(tilte: "Chocolate", artist: "The 1975", songTime: "3:44", links: "https://drive.google.com/uc?export=open&id=1-4DNx3c8mBaZtURuqpe0srCPIL5za9WA"),
                           SongModel(tilte: "Photograph", artist: "Nickelback", songTime: "4:21", links: "https://drive.google.com/uc?export=open&id=1uJxFJsBzTLbfO2hPOf_OAarUHuBycJZ5"),
                           SongModel(tilte: "Highway to Hell", artist: "AC/DC", songTime: "3:27", links: "https://drive.google.com/uc?export=open&id=134iaOJC7X3DEMSBCwKEDLRu9t5PsfkZw")]
    
    static let recommendedRb = [SongModel(tilte: "Come Around Me", artist: "Justin Bieber", songTime: "3:21", links: "https://drive.google.com/uc?export=open&id=1VgZ8AwvyaP_TPOzxUUWMSXWHKhZPpx70"),
                         SongModel(tilte: "You're Right", artist: "Doja Cat", songTime: "3:07", links: "https://drive.google.com/uc?export=open&id=1PDbLncu-60j9ovBkxnMahPx7XCoewafg"),
                         SongModel(tilte: "Stuck with U", artist: "Arina Grande, Justin Bieber", songTime: "3:49", links: "https://drive.google.com/uc?export=open&id=1aYQ14Vnl7RVymkB7U3ZFOOEstwCLFlP3"),
                         SongModel(tilte: "Leave The Door Open", artist: "Bruno Mars, Anderson .Paak, Silk Sonic", songTime: "4:21", links: "https://drive.google.com/uc?export=open&id=1piZhXpAex9GWilq6jO_EzVZuouAVVHk4"),
                         SongModel(tilte: "At My Worst", artist: "Pink Sweat$", songTime: "3:11", links: "https://drive.google.com/uc?export=open&id=1GRBzOvVMp_dCuhAlZRj6T88lTuZkEZLi")]
    
    static let recommendedJazz = [SongModel(tilte: "Fly Me To The Moon", artist: "Frank Sinatra", songTime: "2:27", links: "https://drive.google.com/uc?export=open&id=10iF0Yq_y-LnIQmIQIqW4e6Y4WnaDl3xO"),
                         SongModel(tilte: "Misty", artist: "Ella Fitzgerald", songTime: "2:54", links: "https://drive.google.com/uc?export=open&id=133ZWxb__272HwpsP99mYXIiA-lOXJETo"),
                         SongModel(tilte: "What Am I To You", artist: "Norah Jones", songTime: "3:26", links: "https://drive.google.com/uc?export=open&id=1T13stFUzHfmgL8sEh1n--WyU6PCk6umx"),
                         SongModel(tilte: "Autumn in New York", artist: "Louis Armstrong", songTime: "6:00", links: "https://drive.google.com/uc?export=open&id=126G6yBTeEjEJnfMgS0DmkV2xamTI7kp3"),
                         SongModel(tilte: "Fever", artist: "Peggy Lee", songTime: "4:15", links: "https://drive.google.com/uc?export=open&id=14QuPznEef-Z0-0a5H02driE20W3badrL")]
    
    static let recommendedHiphop = [SongModel(tilte: "BOP on Broadway", artist: "DaBaby", songTime: "2:39", links: "https://drive.google.com/uc?export=open&id=1LcvJcAVdWNa32XXrL2sMDdNJWoyXfk-Q"),
                             SongModel(tilte: "Off The Grid", artist: "Kanye West", songTime: "5:39", links: "https://drive.google.com/uc?export=open&id=1noA83JVYFBTuP3HUxKX4xwdjyN051M0s"),
                             SongModel(tilte: "Astronaut In The Ocean", artist: "Masked Wolf", songTime: "2:32", links: "https://drive.google.com/uc?export=open&id=12YFPB_uqvAN5Boc7xHa1N6GLQtVDgdLd"),
                             SongModel(tilte: "Pray For Me", artist: "The Weeknd, Kendrick Lamar", songTime: "3:28", links: "https://drive.google.com/uc?export=open&id=1_n8pu-vyAdtLVH4yRRLlfESX6-sMYb6V"),
                             SongModel(tilte: "Motley Crew", artist: "Post Malone", songTime: "3:04", links: "https://drive.google.com/uc?export=open&id=1VlVV_ZRslO0WnUxbmM-9zlmoAqcZICm_")]
    
    static let recommendedDisco = [SongModel(tilte: "Magic", artist: "Kylie Minogue", songTime: "3:40", links: "https://drive.google.com/uc?export=open&id=1X_9wtiMRiKVCV10ibXBMFbffSzF45-KM"),
                            SongModel(tilte: "One Kiss", artist: "Calvin Harris, Dua Lipa", songTime: "3:43", links: "https://drive.google.com/uc?export=open&id=1EKFTMTnquQKM2800LzM9eODkQx9Eem0f"),
                            SongModel(tilte: "Get Up and Boogie (That's Right)", artist: "Silver Convention", songTime: "2:51", links: "https://drive.google.com/uc?export=open&id=1JDx_CstAUd6mxEnFk0KF5iboBLd5zWNO"),
                            SongModel(tilte: "Say So", artist: "Doja Cat", songTime: "3:58", links: "https://drive.google.com/uc?export=open&id=1Wo5__SXgRjcabqVLDNW_JP4_nLy0a92e"),
                            SongModel(tilte: "Dancing Queen", artist: "ABBA", songTime: "3:53", links: "https://drive.google.com/uc?export=open&id=1NocnPA1BhX8pT--wLcz5EW6v6y2IN1_6")]
    
    static let recommendedCountry = [SongModel(tilte: "10,000 Hours", artist: "Dan + Shay, Justin Bieber", songTime: "2:56", links: "https://drive.google.com/uc?export=open&id=1wn23S-ofv34qlF4RY126XU_UftSUVOFa"),
                              SongModel(tilte: "Good Time", artist: "Niko Moon", songTime: "3:35", links: "https://drive.google.com/uc?export=open&id=1W6_jl-OB9kvN-zLL8OmZvt3t8HLLRrpZ"),
                              SongModel(tilte: "23", artist: "Sam Hunt", songTime: "3:00", links: "https://drive.google.com/uc?export=open&id=124N-flciiRDPTSM6Mx9j8qfMQL5uUmGw"),
                              SongModel(tilte: "The Git Up", artist: "Blanco Brown", songTime: "3:31", links: "https://drive.google.com/uc?export=open&id=1cJUI0TxoCkPUwI8NDcHFjr7M_Gu8bQHa"),
                              SongModel(tilte: "When I Call Your Name", artist: "Vince Gill", songTime: "4:51", links: "https://drive.google.com/uc?export=open&id=1_bVYxhiamYA78kjvfUXxIZh2slXaRfTe")]
}
