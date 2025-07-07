//
//  ViewModel.swift
//  NewsAPI
//
//  Created by Denis Ivaschenko on 07.07.2025.
//

import SwiftUI

class NewsAPIModelView: ObservableObject {
    
    //array news
    @Published var news: [Article] = []
}
