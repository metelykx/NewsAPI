//
//  NewsAPIApp.swift
//  NewsAPI
//
//  Created by Denis Ivaschenko on 07.07.2025.
//

import SwiftUI

@main
struct NewsAPIApp: App {
    var body: some Scene {
        
        //for look after scenePhase
        @Environment(\.scenePhase) var scenePhase
        
        WindowGroup {
            ContentView()
        }
    }
}
