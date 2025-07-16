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
                    .opacity(isActive ? 1 : 0)
                    .animation(.default, value: isActive)
                
                
                StartView()
                    .opacity(isActive ? 0:1)
                    .animation(.default, value: isActive)
            }
        }
    }
}
