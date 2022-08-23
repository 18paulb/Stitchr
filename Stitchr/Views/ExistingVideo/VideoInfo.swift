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
            Text("Contributors:")
            
            ForEach(video.contributers) { contributor in
                Text(contributor.username ?? "No Name")
                    .bold()
            }
        }
    }
}

struct VideoInfo_Previews: PreviewProvider {
    static var previews: some View {
        VideoInfo(video: allvideos[0])
    }
}
