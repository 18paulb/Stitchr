//
//  ViewfinderView.swift
//  Stitchr
//
//  Created by Brandon Paul on 7/30/22.
//

import SwiftUI

/*#-code-walkthrough(vfv.intro)*/
struct ViewfinderView: View {
    @Binding var image: Image?

    var body: some View {
        GeometryReader { geometry in
            if let image = image {
                image
                    .resizable()
                    .scaledToFill()
                    .frame(width: geometry.size.width, height: geometry.size.height)
            }
        }
    }
}

struct ViewfinderView_Previews: PreviewProvider {
    static var previews: some View {
        ViewfinderView(image: .constant(Image(systemName: "pencil")))
    }
}
