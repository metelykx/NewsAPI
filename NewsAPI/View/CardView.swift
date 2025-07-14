import SwiftUI

struct CardView: View {
    
    let article: Article
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            
            // MARK: - Изображение
            if let url = article.urlToImage, let imageURL = URL(string: url) {
                AsyncImage(url: imageURL) { phase in
                    switch phase {
                    case .empty:
                        ProgressView()
                            .frame(height: 200)
                            .frame(maxWidth: .infinity)
                    case .success(let image):
                        image
                            .resizable()
                            .scaledToFill()
                            .frame(height: 200)
                            .frame(maxWidth: .infinity)
                            .clipped()
                            .cornerRadius(12)
                    case .failure:
                        Color.gray
                            .frame(height: 200)
                            .frame(maxWidth: .infinity)
                            .cornerRadius(12)
                    @unknown default:
                        EmptyView()
                    }
                }
            }
            
            // MARK: - Заголовок
            Text(article.title)
                .font(.headline)
                .foregroundColor(.primary)
                .lineLimit(2)
            
            // MARK: - Описание
            Text(article.description)
                .font(.subheadline)
                .foregroundColor(.secondary)
                .lineLimit(3)
            
            // MARK: - Автор и дата
            HStack {
                Text(article.author.isEmpty ? "Unknown Author" : article.author)
                    .font(.caption)
                    .foregroundColor(.gray)
                
                Spacer()
                
                Text(article.publishedAt, style: .date)
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(16)
        .shadow(color: .black.opacity(0.1), radius: 4, x: 0, y: 2)
        .padding(.horizontal)
    }
}
