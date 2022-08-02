//
//  FriendModel.swift
//  Stitchr
//
//  Created by Brandon Paul on 7/8/22.
//

import Foundation
import UIKit

class FriendModel: Identifiable, ObservableObject {
    
    init(id: Int, username: String, profilepic: String) {
        self.id = id
        self.username = username
        self.profilepic = profilepic
    }
    
    var id: Int?
    var username: String?
    var profilepic: String?
    @Published var isChosen = false
    //var profilepic: UIImage
    
    func toggleChosen() {
        print(self.isChosen)
        self.isChosen = !self.isChosen
        print(self.isChosen)
    }
}
