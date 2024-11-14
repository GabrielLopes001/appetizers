//
//  AppetizersViewModel.swift
//  Appetizers
//
//  Created by Gabriel Lopes on 08/11/24.
//

import Foundation

class AppetizersViewModel: ObservableObject {
    
    @Published var appetizers: [Appetizer] = []
    @Published var isShowingDetail = false
    @Published var selectedAppetizer: Appetizer?
    @Published var isLoading = false
    
    func getAppetizers() {
        isLoading = true
        Task {
            do {
                let data = try await APICall.shared.fetchData()
                
                DispatchQueue.main.async {
                    self.isLoading = false
                    self.appetizers = data
                }
            } catch {
                print("error")
            }
        }
    }
}
