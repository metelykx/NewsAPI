//
//  SettingsView.swift
//  NewsAPI
//
//  Created by Denis Ivaschenko on 14.07.2025.
//

import SwiftUI

struct SettingsView : View {
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            VStack {
                Text("Settings")
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                    .padding(.top)
            }
        }
    }
}

#Preview {
    SettingsView()
}
