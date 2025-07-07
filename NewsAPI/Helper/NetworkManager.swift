//
//  NetworkManager.swift
//  NewsAPI
//
//  Created by Denis Ivaschenko on 07.07.2025.
//

import Foundation

final class NetworkManager {
    
    //MARK: Singleton
    
    // in here I created a singelton for this class
    static let shared = NetworkManager()
    
    //JSONDecoder
    let decoder = JSONDecoder()
    
    //url for get information from API
    let url = "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=56f20e2c6d354ee58b9bfc763887716a"
    
    
    // this is a initial for singelton
    private init() {
        decoder.dateDecodingStrategy = .iso8601
    }
    
    
    //MARK: Function
    
    //func for get information
    func getNews() async throws -> News {
        
        //I checked url
        guard let url = URL(string: url) else {throw NetworkErrors.invalidURL}
        
        //get info and answer from the Server
        let (data, response) = try await URLSession.shared.data(from: url)
        
        //check the response from the Server
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else { throw NetworkErrors.invalidURLResponse}
        
        // get info
        do {
            return try decoder.decode(News.self, from: data)
        } catch {
            throw NetworkErrors.ivalidData
        }
        
    }

}



