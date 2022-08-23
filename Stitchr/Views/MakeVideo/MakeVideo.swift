//
//  MakeVideo.swift
//  Stitchr
//
//  Created by Brandon Paul on 8/20/22.
//

import SwiftUI

struct MakeVideo: View {
    
    var friendList: [FriendModel]
    
    @State private var videoName: String = ""
    
    
    var body: some View {
        
        VStack {

            TextField(
                "Name of Video",
                text: $videoName
            )
            .multilineTextAlignment(.center)
            
            if videoName != "" {
                Button("Make Video", action: {

                    let newVideo = VideoModel(id: allvideos.count+1, name: videoName, length: 34, url: "hogrider", contributers: friendList)
                    //Adds video but still have to see if it is scene in VideoList()
                    allvideos.append(newVideo)
                })
            }
        }
    }
}

struct MakeVideo_Previews: PreviewProvider {
    static var previews: some View {
        MakeVideo(friendList: allfriends)
    }
}
