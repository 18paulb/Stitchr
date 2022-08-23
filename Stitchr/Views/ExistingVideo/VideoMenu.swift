//
//  Video.swift
//  Stitchr
//
//  Created by Brandon Paul on 7/6/22.
//

import SwiftUI
import AVKit
import AVFoundation
import UIKit


struct VideoMenu: View {
    
    var title: String
    
    var resource: String
        
    var body: some View {
        VStack {
            
            HStack {
                Text(title)
                    .font(.title.bold())
                
                NavigationView {
                    NavigationLink {
                        Header()
                    } label: {
                        Text("Info")
                    }
                }
            }
            
            VideoPlayer(player: AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: resource, ofType: "mov")!)))

            Image(systemName: "circle")
                .resizable()
                .frame(width: 50, height: 50, alignment: .center)
            
            //Spacer()
        }
        
    }
}

struct Video_Previews: PreviewProvider {
    static var previews: some View {
        VideoMenu(title: "Beach Trip", resource: "hogrider")
    }
}

