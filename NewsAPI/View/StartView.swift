//
//  StartView.swift
//  NewsAPI
//
//  Created by Denis Ivaschenko on 16.07.2025.
//

import SwiftUI

struct StartView: View {
    var body: some View {
        VStack {
            Image("1", bundle: nil)
                .resizable()
                .scaledToFit()
                
            Text("NewsAPI")
                .fontWeight(.bold)
                .font(.title)
        }
    
    }
}


#Preview {
    StartView()
}
