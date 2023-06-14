//
//  Model.swift
//  lesson26
//
//  Created by Hakob Ghlijyan on 09.06.2023.
//

import Foundation

struct Post: Codable, Identifiable {
    var id:Int
    var userId:Int
    var title:String
    var body:String
}

struct Comments: Codable, Identifiable {
    var postId:Int
    var id:Int
    var name:String
    var email:String
    var body:String
}

struct Album: Codable, Identifiable {
    var userId:Int
    var id:Int
    var title:String
}

struct Photos: Codable, Identifiable {
    var albumId:Int
    var id:Int
    var title:String
    var url:String
    var thumbnailUrl:String
}

struct Todos: Codable, Identifiable {
    var userId:Int
    var id:Int
    var title:String
    var completed:Bool
}
