//
//  VideoInfo.swift
//  Stitchr
//
//  Created by Brandon Paul on 8/22/22.
//

import SwiftUI

struct VideoInfo: View {
    
    var video: VideoModel
    
    var body: some View {
        VStack {
            
            Text("Video name: \(video.name)")
                .padding(.bottom)
            
            Text("Contributors:")
            ForEach(video.contributers) { contributor in
                Text(contributor.username ?? "No Name")
                    .bold()
            }

            
            Text("Length: \(video.length) seconds")
                .padding(.top)
            
            Button("Add contributer(s)", action: {
                print("Hello")
            })
            .padding(.top)
        }
    }
}

struct VideoInfo_Previews: PreviewProvider {
    static var previews: some View {
        VideoInfo(video: allvideos[0])
    }
}
