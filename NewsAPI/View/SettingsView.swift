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
    
    var body: some View {
        
            
          
                    
                    NavigationView {
                        Form {
                            Section(header: Text("Text Color")) {
                                Toggle("Use gray Text", isOn: $useGrayText)
                            }
                        }
                        .navigationTitle(Text("Settings"))
                    
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
