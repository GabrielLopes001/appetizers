//
//  AppetizersViewModel.swift
//  Appetizers
//
//  Created by Gabriel Lopes on 08/11/24.
//

import Foundation

class AppetizersViewModel: ObservableObject {
    
    @Published var appetizers: [Request] = []
    @Published var isShowingDetail = false
    @Published var selectedAppetizer: Request?
    
    func getAppetizers() {
        Task {
            do {
                let data = try await APICall.shared.fetchData()
                
                DispatchQueue.main.async {
                    self.appetizers = data
                }
            } catch {
                print("error")
            }
        }
    }
}
