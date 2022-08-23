//
//  Header.swift
//  Stitchr
//
//  Created by Brandon Paul on 8/19/22.
//

import SwiftUI

struct Header: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Stitcher")
                    .font(.title)
                    .foregroundColor(.black)
                    .frame(height: 30)
                HStack {
                    NavigationLink {
                        ChooseFriends()
                    } label: {
                        Text("Make Video")
                    }
                    .padding()
                    
                    Spacer()
                    
                    NavigationLink {
                        VideoList()
                    } label: {
                        Text("My Videos")
                    }
                    .padding()
                }
            }
        }
        .position(x: 200, y: -30)
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
