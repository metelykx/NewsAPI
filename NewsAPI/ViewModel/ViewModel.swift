//
//  ViewModel.swift
//  NewsAPI
//
//  Created by Denis Ivaschenko on 07.07.2025.
//

import SwiftUI

class NewsAPIModelView: ObservableObject {
    
    @Published var news: [Article] = []
}
