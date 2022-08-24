//
//  AddNewContributer.swift
//  Stitchr
//
//  Created by Brandon Paul on 8/23/22.
//

import SwiftUI

struct AddNewContributer: View {
    
    @EnvironmentObject var modelData: ModelData
    
    var video: VideoModel
    
    //All friends who aren't already existing contributers
    var possibleContributers: [FriendModel] = []
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct AddNewContributer_Previews: PreviewProvider {
    static var previews: some View {
        AddNewContributer(video: allvideos[0])
            .environmentObject(ModelData())
    }
}
