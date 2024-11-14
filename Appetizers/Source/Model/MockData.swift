//
//  Appetizer.swift
//  Appetizers
//
//  Created by Gabriel Lopes on 13/11/24.
//

import Foundation


struct MockData {
    static let sampleAppetizer = Appetizer(name: "Teste",
                                           id: 001, 
                                           carbs: 99,
                                           calories: 99,
                                           description: "Teste description",
                                           price: 99.9,
                                           imageURL: "",
                                           protein: 99)
    
    static let appetizers = [sampleAppetizer]
    
    
    static let orderItemOne = Appetizer(name: "Teste 01",
                                        id: 001,
                                        carbs: 99,
                                        calories: 99,
                                        description: "Teste description",
                                        price: 99.9,
                                        imageURL: "",
                                        protein: 99)
    
    static let orderItemTwo = Appetizer(name: "Teste 02",
                                        id: 002,
                                        carbs: 99,
                                        calories: 99,
                                        description: "Teste description",
                                        price: 99.9,
                                        imageURL: "",
                                        protein: 99)
    
    static let orderItemThree = Appetizer(name: "Teste 03",
                                          id: 003,
                                          carbs: 99,
                                          calories: 99,
                                          description: "Teste description",
                                          price: 99.9,
                                          imageURL: "",
                                          protein: 99)
    
    static let orderItems = [orderItemOne, orderItemTwo, orderItemThree]
}
