//
//  ApiModel.swift
//  lesson26
//
//  Created by Hakob Ghlijyan on 09.06.2023.
//

import Foundation


struct Api {
    
    func getPost(complition: @escaping ([Post]) -> () ) {
        
//        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return }
        //        Eto kogda xoch skachat iz Kakogoto sayta
        
        guard let url = Bundle.main.url(forResource: "userModelDataPosts.json", withExtension: nil) else { return }
        //        Eto kogda xochu skachat iz local file
        
        URLSession.shared.dataTask(with: url) { (data,_,_) in
            
            let posts = try! JSONDecoder().decode([Post].self, from: data!)
            
            DispatchQueue.main.async {
                complition(posts)
            }
        }
        .resume()
    }
}

// https://jsonplaceholder.typicode.com/posts
// https://jsonplaceholder.typicode.com/comments
// https://jsonplaceholder.typicode.com/albums
// https://jsonplaceholder.typicode.com/photos
// https://jsonplaceholder.typicode.com/todos
// https://jsonplaceholder.typicode.com/users
