//
//  ModelData.swift
//  Stitchr
//
//  Created by Brandon Paul on 7/7/22.
//

import Foundation

//All Static Info for Testing
var allvideos: [VideoModel] = [VideoModel(id: 1, name: "Beach Trip", length: 25, url: "mona"), VideoModel(id: 2, name: "Dogs", length: 10, url:"dog"), VideoModel(id: 3, name: "Concerts", length: 42, url: "hogrider")]

var allfriends: [FriendModel] = [FriendModel(id: 1, username: "bpaul18", profilepic: "profilepic"), FriendModel(id: 2, username: "kmill", profilepic: "profilepic"), FriendModel(id: 3, username: "dudeitsdom", profilepic: "profilepic")]

final class ModelData: ObservableObject {
    @Published var videos: [VideoModel] = allvideos
    @Published var friends: [FriendModel] = allfriends
}
