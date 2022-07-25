//
//  VideoClip.swift
//  Stitchr
//
//  Created by Brandon Paul on 7/7/22.
//

import SwiftUI
import AVFoundation
import AssetsLibrary


struct VideoClip: View {
    
    
    //https://developer.apple.com/documentation/avfoundation/media_reading_and_writing/creating_images_from_a_video_asset
    func getThumbnail() -> UIImage? {
        
        do {
        
            //Grabs the video Asset
            let asset = AVAsset(url: URL(string: "hogrider")!)
        
            //Use an image generator to extract images from a video asset at particular times within its timeline.
            let generator = AVAssetImageGenerator(asset: asset)
            generator.requestedTimeToleranceBefore = .zero
            generator.requestedTimeToleranceAfter = CMTime(seconds: 2, preferredTimescale: 600)
            
            //Only Available with new IOS??
            //Will show error in XCode beta, until then. use deprecated functions
            //let image = try await generator.image(at: CMTime(value: 0, timescale: 1))
                     
            //let time = CMTime(value: 0, timescale: 1)
            
            //FIXME: Deprecated but no other way while image(:at) is in beta
            let image = try generator.copyCGImage(at: .zero, actualTime: nil)
            
            let thumbnail = UIImage(cgImage: image)
            return thumbnail
            
        } catch {
            print(error.localizedDescription)
            return nil
        }
    }
     

    var body: some View {
        
        Image(uiImage: (getThumbnail() ?? UIImage(named: "profilepic"))!)
            .resizable()
            .scaledToFit()
            .frame(width: 200, height: 200, alignment: .center)


        
        /*
        Image(systemName: "square.fill")
            .resizable()
            .frame(width: 200, height: 200, alignment: .center)
        */
         
    }
}

struct VideoClip_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            VideoClip()
        }
    }
}

