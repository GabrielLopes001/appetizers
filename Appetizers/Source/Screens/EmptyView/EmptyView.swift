//
//  EmptyView.swift
//  Appetizers
//
//  Created by Gabriel Lopes on 13/11/24.
//

import SwiftUI

struct EmptyView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)
            
            
            VStack {
                Image("")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                
                Text("Default Message")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding()
            }
        }
    }
}

#Preview {
    EmptyView()
}
