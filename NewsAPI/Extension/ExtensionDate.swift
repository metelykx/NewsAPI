//
//  ExtensionDate.swift
//  NewsAPI
//
//  Created by Denis Ivaschenko on 14.07.2025.
//

import Foundation
import SwiftUI

//MARK: extension Date
extension Date {
    func convertData() -> String {
        return formatted(.dateTime.hour().minute().day().month().year())
    }
}

