//
//  Header.swift
//  Stitchr
//
//  Created by Brandon Paul on 8/19/22.
//

import SwiftUI

struct Header: View {
    var body: some View {
        
        Text("Stitcher")
            .font(.title)
            .foregroundColor(.black)
            .frame(height: 30)
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
