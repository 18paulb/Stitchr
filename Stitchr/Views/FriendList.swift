//
//  FriendList.swift
//  Stitchr
//
//  Created by Brandon Paul on 7/7/22.
//

import SwiftUI

struct FriendList: View {
    var body: some View {
        List {
            ForEach(allfriends) { friend in
                HStack {
                    ProfilePic(picture: friend.profilepic)
                    Text("@"+friend.username)
                }
            }
        }
    }
}

struct FriendList_Previews: PreviewProvider {
    static var previews: some View {
        FriendList()
    }
}
