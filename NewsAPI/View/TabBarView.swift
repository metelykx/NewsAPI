//
//  TabBarView.swift
//  NewsAPI
//
//  Created by Denis Ivaschenko on 14.07.2025.
//

import SwiftUI

struct TabBarView : View {
    var body: some View {
        
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "newspaper.fill")
                    Text("News")
                }
            
            Text("Settings")
                .tabItem {
                    Image(systemName: "gearshape.fill")
                    Text("Settings")
                }
        }
    }
}


#Preview {
    TabBarView()
}
