//
//  APICall.swift
//  Appetizers
//
//  Created by Gabriel Lopes on 07/11/24.
//

import Foundation

class APICall {
    
    static let shared = APICall()
    
    func fetchData() async throws -> [Appetizer] {
        let url = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/appetizers"
        
        guard let urlString = URL(string: url) else { return [] }
        
        let (data, _) =  try await URLSession.shared.data(from: urlString)
        
        let appetizers = try JSONDecoder().decode(AppetizersResponse.self, from: data)
        return appetizers.request
        
    }
}
