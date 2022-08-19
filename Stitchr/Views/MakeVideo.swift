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
        ZStack {
            VStack {
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
                            Button("Add", action: {chosenFriends.append(friend)})
                        }
                        
                    }
                }
            }
        }
    }
}

struct MakeVideo_Previews: PreviewProvider {
    static var previews: some View {
        MakeVideo()
            .environmentObject(ModelData())
    }
}
