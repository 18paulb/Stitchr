//
//  VideoObject.swift
//  Stitchr
//
//  Created by Brandon Paul on 7/7/22.
//

import Foundation

struct VideoModel: Identifiable {
    var id: Int
    var name: String
    var length: Int
    var url: String
    var contributers: [FriendModel] = [FriendModel(id: 3, username: "dudeitsdom", profilepic: "profilepic")]
    
    mutating func addContributer(_friend: FriendModel) {
        contributers.append(_friend)
    }
}
