//
//  AppetizersModel.swift
//  Appetizers
//
//  Created by Gabriel Lopes on 07/11/24.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let appetizersResponse = try? JSONDecoder().decode(AppetizersResponse.self, from: jsonData)

import Foundation

// MARK: - AppetizersResponse
struct AppetizersResponse: Codable {
    let request: [Request]
}

// MARK: - Request
struct Request: Codable, Identifiable {
    let name: String
    let id, carbs, calories: Int
    let description: String
    let price: Double
    let imageURL: String
    let protein: Int
}

