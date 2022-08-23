//
//  Header.swift
//  Stitchr
//
//  Created by Brandon Paul on 8/19/22.
//

import SwiftUI

struct Header: View {
    var body: some View {
        
        VStack {
            Text("Stitcher")
                .font(.title)
                .foregroundColor(.black)
                .frame(height: 30)
            
            NavigationView {
                List {
                    NavigationLink {
                        VideoList()
                    } label: {
                        Text("My Videos")
                    }
                    
                    NavigationLink {
                        ChooseFriends()
                    } label: {
                        Text("Make Video")
                    }
                }
            }
            
            
            /*
            HStack {
                Text("My Videos")
                    .padding()
                
                Spacer()
                
                Text("Create Video")
                    .padding()
            }
             */
        }
        //.position(x: 190, y: 50)
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
