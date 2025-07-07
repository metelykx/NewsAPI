//
//  CardView.swift
//  NewsAPI
//
//  Created by Denis Ivaschenko on 07.07.2025.
//

import SwiftUI

struct CardView: View {
    let article: Article
    
    var body: some View {
        VStack(alignment: .center) {
            GeometryReader { geometry in
                ZStack {
                    // Background rectangle
                    RoundedRectangle(cornerRadius: 20)
                        .frame(maxWidth: .infinity, maxHeight: geometry.size.height / 2)
                        .padding(.horizontal)
                        .foregroundColor(.gray)
                    
                    // Image content
                    if let imageURL = URL(string: article.urlToImage) {
                        AsyncImage(url: imageURL) { phase in
                            if let image = phase.image {
                                image
                                    .resizable()
                                    .scaledToFill()
                            } else if phase.error != nil {
                                placeholderView(geometry: geometry, color: .black)
                            } else {
                                ProgressView()
                            }
                        }
                        .cornerRadius(20)
                        .frame(maxWidth: .infinity, maxHeight: geometry.size.height / 2)
                        .padding(.horizontal)
                    } else {
                        placeholderView(geometry: geometry, color: .black)
                    }
                }
            }
            .frame(height: 200) // Set a fixed height for consistency
        }
    }
    
    // Helper view for placeholder
    @ViewBuilder
    private func placeholderView(geometry: GeometryProxy, color: Color) -> some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(maxWidth: .infinity, maxHeight: geometry.size.height / 2)
            .padding(.horizontal)
            .foregroundColor(color)
    }
}

#Preview {
    CardView(
        article: Article(
            author: "Example",
            title: "News 1",
            description: "Tralalelo",
            url: "",
            urlToImage: "https://www.google.com/url?sa=i&url=https%3A%2F%2Ftrinixy.ru%2F231781-kartinki-i-risunki-kotorye-zastavlyayut-zadumatsya.html&psig=AOvVaw30fAXhKkJqy9G6oxxb7_WT&ust=1751973672354000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCMCIrtXQqo4DFQAAAAAdAAAAABAL",
            publishedAt: Date(),
            content: "Full content would go here..."
        )
    )
}
