//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by Gabriel Lopes on 11/11/24.
//

import Foundation


class AccountViewModel: ObservableObject {
    
    @Published  var firstName = ""
    @Published  var lastName = ""
    @Published  var email = ""
    @Published  var birthday = Date()
    @Published  var extraNapkins = false
    @Published  var frequentRefills = false
    
    
    
    var isValidForm: Bool {
        guard !firstName.isEmpty && !lastName.isEmpty && !email.isEmpty else {
            return false
        }
        
        guard email.isValidEmail else {
            return false
        }
        
        return true
    }
    
    func saveChanges() {
        guard isValidForm else { return }
        
        print("save changes valid")
    }
}
