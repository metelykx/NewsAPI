//
//  ContentView.swift
//  NewsAPI
//
//  Created by Denis Ivaschenko on 07.07.2025.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var art = NewsAPIModelView()
    
    var body: some View {
        Text("News")
            .font(.title)
    }
}

#Preview {
    ContentView()
}
