//
//  UserModel.swift
//  Stitchr
//
//  Created by Brandon Paul on 8/20/22.
//

import Foundation
import UIKit

class UserModel: ObservableObject, Identifiable {
    
    init(username: String, profilepic: String) {
        self.username = username
        self.profilepic = profilepic
    }
    
    var username: String?
    var profilepic: String?
    
    @Published var friends: [FriendModel] = []
    
    @Published var videos: [VideoModel] = []
    
    func addFriend(_friend: FriendModel) -> Void {
        friends.append(_friend)
    }
    
    func addVideo(_video: VideoModel) -> Void {
        videos.append(_video)
    }
}
