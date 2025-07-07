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
                //articles get ingo and post news
                let articles = try await NetworkManager.shared.getNews()
                news = articles.articles
            } catch {
                //if error == error which in the NetworkError. you need to show this error in console.
                if let error = error as? NetworkErrors {
                    print(error)
                }
            }
        }
    }
}
