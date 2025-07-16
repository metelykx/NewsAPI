//
//  NewsAPIApp.swift
//  NewsAPI
//
//  Created by Denis Ivaschenko on 07.07.2025.
//

import SwiftUI

@main
struct NewsAPIApp: App {
    
    //for look after scenePhase
    @Environment(\.scenePhase) var scenePhase
    
    //for look after isActive or no
    @State private var isActive = false
    
    var body: some Scene {
        WindowGroup {
        ZStack {
                ContentView()
            }
        }
    }
}
