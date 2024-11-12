//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Gabriel Lopes on 07/11/24.
//

import SwiftUI

@main
struct AppetizersApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                AppetizersListView()
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                
                AccountView()
                    .tabItem {
                        Label("Account", systemImage: "person")
                    }
            }
        }
    }
}
