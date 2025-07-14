//
//  ExtendionDateText.swift
//  NewsAPI
//
//  Created by Denis Ivaschenko on 14.07.2025.
//

import Foundation
import SwiftUI

//MARK: extension Text
extension Text {
    
    //for title
    func titleFont() -> some View {
        self
            .foregroundStyle(.primary)
            .font(.system(size: 16, weight: .bold, design: .rounded))
                        .opacity(0.8)
    }
    
    //for description
    func descriptionFont() -> some View {
        self
            .foregroundStyle(.primary)
                        .font(.system(size: 14, weight: .regular, design: .rounded))
                        .opacity(0.8)
    }
    
    
    
}

//MARK: extension Date
extension Date {
    func convertData() -> String {
        return formatted(.dateTime.hour().minute().day().month().year())
    }
}
