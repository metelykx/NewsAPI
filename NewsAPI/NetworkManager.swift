//
//  NetworkManager.swift
//  NewsAPI
//
//  Created by Denis Ivaschenko on 07.07.2025.
//

import Foundation

final class NetworkManager {
    
    
    // in here I created a singelton for this class
    static let shared = NetworkManager()
    
    
    //url for get information from API
    let url = "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=56f20e2c6d354ee58b9bfc763887716a"
    
    
    // this is a initial for singelton
    private init() {}
    
    
    func getNews() async throws {
        
        
    }
}
