//
//  ContentView.swift
//  Stitchr
//
//  Created by Brandon Paul on 7/5/22.
//

import SwiftUI
import UIKit


struct ContentView: View {

    var body: some View {
        VStack {
        Header()
            NavigationView {
                VStack {
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
                //VideoRecord()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()

        }
    }
}
