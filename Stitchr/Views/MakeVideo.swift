//
//  MakeVideo.swift
//  Stitchr
//
//  Created by Brandon Paul on 7/25/22.
//

import SwiftUI

struct MakeVideo: View {
    
    @EnvironmentObject var modelData: ModelData

    @State private var chosenFriends: [FriendModel] = []
    
    mutating func addFriend(_friend: FriendModel) -> Void {
        chosenFriends.append(_friend)
    }
    
    var body: some View {
        //List {
        VStack {
            ForEach(modelData.friends) { friend in
                HStack {
                    ProfilePic(picture: friend.profilepic!)
                    Text("@"+friend.username!)
                    
                    Button("Add", action: friend.toggleChosen)
                     
                    /*
                    Button {
                        //friend.isChosen = true
                        friend.toggleChosen()
                        print(friend.isChosen)
                    } label: {
                        Text("Test")
                    }
                    */
                    
                    if friend.isChosen {
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                    } else {
                        Image(systemName: "star")
                    }
                    
                }
            }
            //}
        }
    }
}

struct MakeVideo_Previews: PreviewProvider {
    static var previews: some View {
        MakeVideo()
            .environmentObject(ModelData())
    }
}
