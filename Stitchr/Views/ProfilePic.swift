//
//  ProfilePic.swift
//  Stitchr
//
//  Created by Brandon Paul on 7/11/22.
//

import SwiftUI

struct ProfilePic: View {
    
    var picture: String
    
    var body: some View {

        
        Image(picture)
            .resizable()
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.black, lineWidth:0))
            .scaledToFill()
            .frame(width: 60, height: 60)
         
    }
}

struct ProfilePic_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePic(picture: "profilepic")
    }
}
