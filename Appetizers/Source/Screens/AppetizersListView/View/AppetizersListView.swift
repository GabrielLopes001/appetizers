//
//  ContentView.swift
//  Appetizers
//
//  Created by Gabriel Lopes on 07/11/24.
//

import SwiftUI

struct AppetizersListView: View {
    
    @StateObject var viewModel = AppetizersViewModel()
    
    var body: some View {
        ZStack {
            NavigationView {
                List(viewModel.appetizers, id: \.id ) { item in
                    AppetizerCell(appetizer: item)
                        .onTapGesture {
                            viewModel.selectedAppetizer = item
                            viewModel.isShowingDetail = true
                        }
                }
                .navigationTitle("🍟 Appetizers")
                .disabled(viewModel.isShowingDetail)
            }
            .onAppear {
                viewModel.getAppetizers()
            }
            .blur(radius: viewModel.isShowingDetail ? 20 : 0 )
            
            if viewModel.isLoading {
                LoadingView()
            }
            
            if viewModel.isShowingDetail {
                AppetizersDetailsView(isShowindDetail: $viewModel.isShowingDetail, appetizer: viewModel.selectedAppetizer!)
            }
        }
   
    }
}

#Preview {
    AppetizersListView()
}
