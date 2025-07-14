//
//  CardView.swift
//  NewsAPI
//
//  Created by Denis Ivaschenko on 07.07.2025.
//

import SwiftUI

struct CardView: View {
    
    let article: Article
    
    //MARK: View
    var body: some View {
        VStack(alignment: .center) {
            VStack {
                ZStack {
                    GeometryReader { geometry in
                        
                        Rectangle()
                            .cornerRadius(20)
                            .frame(maxWidth: .infinity, maxHeight: geometry.size.height / 1.5)
                            .padding(.horizontal)
                            .foregroundStyle(.gray)
                            
                        Text(article.title)
                            .frame(height: geometry.size.height / 1.4)
                            .padding(.leading)
                            .font(.title)
                            .padding(.horizontal)
                        
                        Text(article.description)
                            .frame(height: geometry.size.height / 1.2)
                            .padding(.leading)
                            
                            .padding(.horizontal)
                            .lineLimit(3)
                        
                        
                        HStack {
                            Text(article.author)
                                .frame(height: geometry.size.height / 0.8)
                                .padding(.leading)
                            
                                .padding(.horizontal)
                                .lineLimit(3)
                            
                            Text(article.publishedAt, style: .date)
                                
                        }
                        
                        
                            
                            
                            
                            
                        
                        
                        if let url = article.urlToImage, let imageURL = URL(string: url) {
                            AsyncImage(url: imageURL) {
                                phase in
                                if let image = phase.image {
                                    image
                                        .resizable()
                                        .scaledToFit()
                                        .cornerRadius(20)
                                        .frame(maxWidth: .infinity, maxHeight: geometry.size.height / 3)
                                        .padding(.horizontal)
                                        .cornerRadius(20)
                                }
                                else {
                                    Rectangle().cornerRadius(20)
                                        .frame(maxWidth: .infinity, maxHeight: geometry.size.height / 3)
                                        .padding(.horizontal)
                                        .foregroundStyle(.black)
                                    
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    CardView(
        article: Article(
            author: "Example",
            title: "News 1",
            description: "Tralalelovrvrvrvrvrvrvrrvvvvvvvvvvv f fvfvfvfvf vfvfvfvfv vfvfvvfvfv vfvfvffvf vfvfvfvfv vfvfvfvf vfvfvf",
            url: "",
            urlToImage: "https://www.google.com/url?sa=i&url=https%3A%2F%2Ftrinixy.ru%2F231781-kartinki-i-risunki-kotorye-zastavlyayut-zadumatsya.html&psig=AOvVaw30fAXhKkJqy9G6oxxb7_WT&ust=1751973672354000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCMCIrtXQqo4DFQAAAAAdAAAAABAL",
            publishedAt: Date(),
            content: "Full content would go here..."
        )
    )
}
