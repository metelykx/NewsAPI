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
        ScrollView(showsIndicators: false) {
            Text("News")
                .font(.title)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
                .padding(.top)
            
            ForEach(art.news, id: \.url) { article in
                
            }
        }
    }
}

#Preview {
    ContentView()
}
