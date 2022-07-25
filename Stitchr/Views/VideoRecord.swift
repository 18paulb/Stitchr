//
//  VideoRecord.swift
//  Stitchr
//
//  Created by Brandon Paul on 7/18/22.
//

import SwiftUI
import AVFoundation

//https://developer.apple.com/documentation/avfoundation/capture_setup/requesting_authorization_for_media_capture_on_macos




class PreviewView: UIView {
    
    let captureSession = AVCaptureSession()
    
    override class var layerClass: AnyClass {
        return AVCaptureVideoPreviewLayer.self
    }
    
    var videoPreviewLayer: AVCaptureVideoPreviewLayer {
        return layer as! AVCaptureVideoPreviewLayer
    }
    
    func videoRecord() {
        captureSession.beginConfiguration()
        
        let videoDevice = AVCaptureDevice.default(.builtInWideAngleCamera, for: .video, position: .unspecified)
         //let videoDevice = getAVDevice()
        
        guard
            let videoDeviceInput = try? AVCaptureDeviceInput(device: videoDevice!),
                captureSession.canAddInput(videoDeviceInput)
            else { return }
        captureSession.addInput(videoDeviceInput)
         
        captureSession.commitConfiguration()
        
        captureSession.startRunning()
    }
    
    //self.previewView.videoPreviewLayer.session = self.captureSession
}

struct VideoRecord: View {
    
    
    

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

/*
struct PreviewView_Previews: PreviewProvider {
    static var previews: some UIView {
        PreviewView()
    }
}
*/


struct VideoRecord_Previews: PreviewProvider {
    static var previews: some View {
        VideoRecord()
    }
}