//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Gabriel Lopes on 07/11/24.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            /* Disponibilizando a classe Order com o mesmo estado para todas as classes filhas da AppertizerTabView */
            AppetizerTabView().environmentObject(order)
        }
    }
}
