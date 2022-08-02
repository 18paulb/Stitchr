//
//  StitchrApp.swift
//  Stitchr
//
//  Created by Brandon Paul on 7/5/22.
//

import SwiftUI
import UIKit


@main
struct StitchrApp: App {
    
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
