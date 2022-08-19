//
//  FriendList.swift
//  Stitchr
//
//  Created by Brandon Paul on 7/7/22.
//

import SwiftUI

struct FriendList: View {
    
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        List {
            ForEach(modelData.friends) { friend in
                HStack {
                    ProfilePic(picture: friend.profilepic!)
                    Text("@"+friend.username!)
                }
            }
        }
    }
}

struct FriendList_Previews: PreviewProvider {
    static var previews: some View {
        FriendList()
            .environmentObject(ModelData())
    }
}
