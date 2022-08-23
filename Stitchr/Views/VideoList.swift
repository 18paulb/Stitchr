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
            //ScrollView {
            List {
                ForEach(allvideos) { video in
                    VStack {
                        VideoClip()
                        NavigationLink {
                                VideoMenu(video: video)
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
