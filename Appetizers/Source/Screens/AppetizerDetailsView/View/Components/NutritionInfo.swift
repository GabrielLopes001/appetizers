//
//  NutritionInfo.swift
//  Appetizers
//
//  Created by Gabriel Lopes on 08/11/24.
//

import Foundation
import SwiftUI

struct NutritionInfo: View {
    
    var title: String
    var value: Int
    
    var body: some View {
        VStack(spacing: 5) {
            Text(title)
                .bold()
                .font(.caption)
            
            Text("\(value)")
                .foregroundColor(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}
