//
//  APButton.swift
//  Appetizers
//
//  Created by Gabriel Lopes on 08/11/24.
//

import SwiftUI

struct APButton: View {
    
    var title: LocalizedStringKey
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .foregroundColor(.white)
            .background(Color(.green))
            .cornerRadius(10)
    }
}

#Preview {
    APButton(title: "Teste button")
}
