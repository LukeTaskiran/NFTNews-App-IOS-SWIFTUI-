//
//  NFTNewsApp.swift
//  NFTNews
//
//  Created by Luke Taskiran on 2022-01-11.
//

import SwiftUI
import GoogleMobileAds
@main
struct NFTNewsApp: App {
    init(){
        GADMobileAds.sharedInstance().start(completionHandler: nil)
    }
    var body: some Scene {
        WindowGroup {
            FrontPage()
        }
    }
}
class AppState: ObservableObject {
    

    
}
