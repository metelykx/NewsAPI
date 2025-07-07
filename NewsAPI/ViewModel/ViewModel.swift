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
    
    func fetchNews() {
        Task {
            do {
                let articles = try await NetworkManager.shared.getNews()
                news = articles.articles
            } catch {
                
            }
        }
    }
}
