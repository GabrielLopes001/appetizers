//
//  AppetizersDetailsView.swift
//  Appetizers
//
//  Created by Gabriel Lopes on 08/11/24.
//

import SwiftUI

struct AppetizersDetailsView: View {
    
    @Binding var isShowindDetail: Bool
    var appetizer: Request
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: appetizer.imageURL))
            {image in image.image?.resizable()}
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 225)
            
            VStack {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                
                HStack(spacing: 40) {
                    NutritionInfo(title: "Calories", value: appetizer.calories)
                    NutritionInfo(title: "Carbs", value: appetizer.carbs)
                    NutritionInfo(title: "Protein", value: appetizer.protein)
                }
                
                Spacer()
                
                Button {
                    print("tapped")
                } label: {
                    APButton(title: "$\(appetizer.price,specifier: "%.2f")")
                }
                .padding(.bottom, 30)
                
            }
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(Button {
            isShowindDetail = false
        } label: {
            XDismissButton()
        }, alignment: .topTrailing)
    }
}

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

//#Preview {
//    AppetizersDetailsView(isShowindDetail: .constant(true))
//}
