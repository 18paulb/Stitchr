//
//  Videos.swift
//  Stitchr
//
//  Created by Brandon Paul on 7/6/22.
//

import SwiftUI

struct VideoList: View {
    var body: some View {
        NavigationView {
            //TODO: These are all static, replace eventually with backend videos and views that come with it
            ScrollView {
                
                ForEach(allvideos) { video in
                    VStack {
                        VideoClip()
                        NavigationLink {
                                VideoMenu(title: video.name, resource: video.url)
                        } label: {
                            Text("Add To Video")
                        }.padding()
                    }
                }
            }
            .navigationTitle("My Videos")
            .navigationBarTitleDisplayMode(.inline)
            //.ignoresSafeArea()
        }
    }
}

struct Videos_Previews: PreviewProvider {
    static var previews: some View {
        VideoList()
    }
}
