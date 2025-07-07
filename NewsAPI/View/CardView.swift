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
        Text("dw")
        
        
        
        
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
