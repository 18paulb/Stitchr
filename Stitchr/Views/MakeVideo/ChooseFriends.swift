//
//  MakeVideo.swift
//  Stitchr
//
//  Created by Brandon Paul on 7/25/22.
//

import SwiftUI

struct ChooseFriends: View {
    
    @EnvironmentObject var modelData: ModelData

    @State private var chosenFriends: [FriendModel] = []
    
    @State private var videoName: String = ""
    
    @State private var createVideoButtonDisabled: Bool = true
    
    mutating func chooseFriend(_friend: FriendModel) -> Void {
        chosenFriends.append(_friend)
    }
    
    mutating func unchooseFriend(_friend: FriendModel) -> Void {
        if let index = chosenFriends.firstIndex(of: _friend) {
            chosenFriends.remove(at: index)
        }
    }
    
    func isChosen(_friend: FriendModel) -> Bool {
        for friend in chosenFriends {
            if _friend.username == friend.username {
                return true
            }
        }
        return false
    }
    
    
    
    var body: some View {
        VStack {
            
            Button("Make Video") {
                let newVideo = VideoModel(id: allvideos.count+1, name: videoName, length: 34, url: "hogrider", contributers: chosenFriends)
                allvideos.append(newVideo)
            }
            .disabled(createVideoButtonDisabled)
            
            List {
                
                TextField(
                    "Name of Video",
                    text: $videoName
                )
                .multilineTextAlignment(.center)
                
                ForEach($modelData.friends) { $friend in
            
                    HStack {
                        
                        ProfilePic(picture: friend.profilepic!)
                        Text("@"+friend.username!)
                        
                        if isChosen(_friend: friend) {
                            Button("Remove", action: {
                                if let index = chosenFriends.firstIndex(of: friend) {
                                    chosenFriends.remove(at: index)
                                }
                            
                            })
                        } else {
                            Button("Add", action: {
                                chosenFriends.append(friend)
                                //chooseFriend(_friend: friend)
                            })
                        }
                    }
                }
                
                //if chosenFriends.count != 0 && videoName != "" {
                //    createVideoButtonDisabled = false
                //}
            }
        }
    }
}

struct ChooseFriends_Previews: PreviewProvider {
    static var previews: some View {
        ChooseFriends()
            .environmentObject(ModelData())
    }
}
