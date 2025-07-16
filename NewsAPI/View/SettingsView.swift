//
//  SettingsView.swift
//  NewsAPI
//
//  Created by Denis Ivaschenko on 14.07.2025.
//

import SwiftUI

struct SettingsView : View {
    
    //appstorage control information from UserDefaults
    @AppStorage("useGrayText") private var useGrayText = false
    @AppStorage("selectedFont") private var selectedFont = false
    
    
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

struct SettingsPickerFontsView: View {
    var body: some View {
        HStack {
            Text("Fonts")
                .font(.title3)
            
        }
    }
}
#Preview {
    SettingsView()
}
