//
//  AppetizerCell.swift
//  Appetizers
//
//  Created by Gabriel Lopes on 07/11/24.
//

import SwiftUI

struct AppetizerCell: View {
    
    var appetizer: Request
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: appetizer.imageURL), content: { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }, placeholder: {
                ProgressView()
            })
                .frame(width: 120, height: 90)
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 8) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text("$\(appetizer.price, specifier: "%.2f")")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(6)
        }
    }
}
