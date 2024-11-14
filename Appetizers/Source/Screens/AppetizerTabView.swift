//
//  AppetizerTabView.swift
//  Appetizers
//
//  Created by Gabriel Lopes on 13/11/24.
//

import SwiftUI

struct AppetizerTabView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        TabView {
            AppetizersListView()
                .tabItem { Label("Home", systemImage: "house") }
            
            AccountView()
                .tabItem { Label("Account", systemImage: "person") }
            
            OrderView()
                .tabItem { Label("Order", systemImage: "bag") }
                .badge(order.items.count)
        }
        .accentColor(.green)
    }
}

#Preview {
    AppetizerTabView()
}
