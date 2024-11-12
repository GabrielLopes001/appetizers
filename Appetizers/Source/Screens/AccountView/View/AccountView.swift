//
//  AccountView.swift
//  Appetizers
//
//  Created by Gabriel Lopes on 11/11/24.
//

import SwiftUI

struct AccountView: View {
    
    @StateObject var viewModel = AccountViewModel()
    
    var body: some View {
        NavigationView {
            Form {
                Section("PERSONAL INFO") {
                    TextField("First Name", text: $viewModel.firstName)
                    TextField("Last Name", text: $viewModel.lastName)
                    TextField("Email", text: $viewModel.email)
                        .keyboardType(.emailAddress)
                        .autocorrectionDisabled(false)
                        .autocapitalization(.none)
                    
                    DatePicker("Birthday", selection: $viewModel.birthday, displayedComponents: .date)
                    
                    Button {
                        viewModel.saveChanges()
                    } label: {
                        Text("Save Changes")
                    }
                    
                }
                
                Section("REQUESTS") {
                    Toggle(isOn: $viewModel.extraNapkins) {
                        Text("Extra Napkins")
                    }
                    Toggle(isOn: $viewModel.frequentRefills) {
                        Text("Frequent Refills")
                    }
                }
            }
            .navigationTitle("🤣 Account")
        }
        
    }
}

#Preview {
    AccountView()
}
