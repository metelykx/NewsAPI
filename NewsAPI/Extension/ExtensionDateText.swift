//
//  ExtendionDateText.swift
//  NewsAPI
//
//  Created by Denis Ivaschenko on 14.07.2025.
//

import Foundation
import SwiftUI

extension Text {
    func titleFont() -> some View {
        self
            .foregroundStyle(.primary)
            .font(.system(size: 16, weight: .bold, design: .rounded))
                        .opacity(0.8)
    }
    
    func descriptionFont() -> some View {
        self
            .foregroundStyle(.primary)
                        .font(.system(size: 14, weight: .regular, design: .rounded))
                        .opacity(0.8)
    }
}
