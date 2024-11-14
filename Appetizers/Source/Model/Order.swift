//
//  Order.swift
//  Appetizers
//
//  Created by Gabriel Lopes on 13/11/24.
//

import SwiftUI

final class Order: ObservableObject {
    
    @Published var items: [Appetizer] = []
    
    var totalPrice: Double {
        items.reduce(0) {$0 + $1.price}
    }
    
    func add(_ appetizer: Appetizer) {
        items.append(appetizer)
    }
    
    func remove(at atOffsets: IndexSet) {
        items.remove(atOffsets: atOffsets)
    }
}
