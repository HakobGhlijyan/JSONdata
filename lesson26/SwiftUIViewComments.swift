//
//  SwiftUIViewComments.swift
//  lesson26
//
//  Created by Hakob Ghlijyan on 09.06.2023.
//

import SwiftUI

struct SwiftUIViewComments: View {
    
    @State var posts:[Post] = []
    
    var body: some View {
        NavigationView {
            List(posts) { post in
                Section {
                    VStack(alignment: .center) {
                        Text(post.title)
                            .font(.headline)
                            .multilineTextAlignment(.center)
                        Divider()
                            .frame(width: 250,height: 1)
                            .background(Color.red)
                        Text(post.body)
                        .multilineTextAlignment(.center)
                    }
                }
            } .onAppear() {
                Api().getPost { (posts) in
                    self.posts = posts
                }
            }
            .navigationTitle("Posts")
        }
    }
    
}

struct SwiftUIViewComments_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIViewComments()
    }
}
