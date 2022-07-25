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
                        //VideoClip()
                        Text("Hello World")
                    } label: {
                        Text("Make Video")
                    }
                    .padding()
                }
            }
            .ignoresSafeArea()
            
            Spacer()
               
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
