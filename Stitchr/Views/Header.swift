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
                .frame(maxHeight: 50)
            /*
            //FIXME: Navigation Views are deprecated
            NavigationView {
                HStack {
                    NavigationLink {
                        VideoList()
                    } label: {
                        Text("My Videos")
                    }
                    .padding()
                    
                    Spacer()
                    
                    NavigationLink {
                        VideoRecord()
                        //Text("Hello World")
                    } label: {
                        Text("Make Video")
                    }
                    .padding()
                }
            }
             */
        }
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
