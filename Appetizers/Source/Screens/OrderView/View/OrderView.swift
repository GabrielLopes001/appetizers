//
//  OrderView.swift
//  Appetizers
//
//  Created by Gabriel Lopes on 13/11/24.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerCell(appetizer: appetizer)
                        }
                        .onDelete(perform: order.remove)
                    }
                    .listStyle(.plain)
                    
                    Button {
                        print("order")
                    } label: {
                        APButton(title: "$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .padding(.bottom, 30)
                }
                
                if order.items.isEmpty {
                    EmptyView()
                }
            }
            .navigationTitle("📝Orders")
        }
    }
}

#Preview {
    OrderView()
}
