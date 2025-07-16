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
                
                //show tab
                TabBarView()
                    .opacity(isActive ? 1 : 0)
                    .animation(.default, value: isActive)
                
                //show startview
                StartView()
                    .opacity(isActive ? 0:1)
                    .animation(.default, value: isActive)
            }
        }
        //switch for lifeCycle
        .onChange(of: scenePhase) { oldValue, newValue in
            switch newValue {
            case .active:
                self.isActive = true
            case .inactive:
                self.isActive = false
            case .background:
                self.isActive = false
                default :
                break
            }
        }
    }
}
