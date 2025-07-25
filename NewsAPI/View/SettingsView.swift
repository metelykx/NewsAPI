//
//  SettingsView.swift
//  NewsAPI
//
//  Created by Denis Ivaschenko on 14.07.2025.
//

import SwiftUI

struct SettingsView : View {
    
    //appstorage control information from UserDefaults
@AppStorage("useGrayText") var useGrayText = false
    
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



#Preview {
    SettingsView()
}
