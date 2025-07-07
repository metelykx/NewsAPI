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
    
    
    //url for get information from API
    let url = "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=56f20e2c6d354ee58b9bfc763887716a"
    
    
    // this is a initial for singelton
    private init() {}
    
    
    
    //MARK: Functions
    
    
    //func for get information
    func getNews() async throws {
        
        //I checked url
        guard let url = URL(string: url) else {throw NetworkErrors.invalidURL}
        
        //get info and answer from the Server
        let (data, response) = try await URLSession.shared.data(from: url)
        
        
        
    }
}



