//
//  Model.swift
//  NewsAPI
//
//  Created by Denis Ivaschenko on 07.07.2025.
//

import SwiftUI
import Foundation

// MARK: - Welcome
struct Welcome: Decodable {
    let status: String
    let totalResults: Int
    let articles: [Article]
}

// MARK: - Article
struct Article: Codable {
    let author, title, description: String
    let url: String
    let urlToImage: String
    let publishedAt: Date
    let content: String
}

