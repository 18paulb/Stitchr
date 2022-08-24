//
//  Video.swift
//  Stitchr
//
//  Created by Brandon Paul on 7/6/22.
//

import SwiftUI
import AVKit
import AVFoundation
import UIKit


struct VideoMenu: View {
    
    var video: VideoModel
        
    var body: some View {
        VStack {
            VStack {
                Text(video.name)
                    .font(.title.bold())
                
                NavigationLink {
                    VideoInfo(video: video)
                } label: {
                    Text("Info")
                }
                
                VideoPlayer(player: AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: video.url, ofType: "mov")!)))

                Image(systemName: "circle")
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .center)
            }
        }
        
    }
}

struct Video_Previews: PreviewProvider {
    static var previews: some View {
        VideoMenu(video: allvideos[0])
    }
}

