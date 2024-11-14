//
//  Alert.swift
//  Appetizers
//
//  Created by Gabriel Lopes on 13/11/24.
//

import Foundation
import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButon: Alert.Button
}

struct AlertContext {
    static let invalidForm = AlertItem(title: Text("Invalid Form"), message: Text("please check fields in form."), dismissButon: .default(Text("OK")))
    
    static let invalidEmail = AlertItem(title: Text("Invalid Email"), message: Text("Check your email correct."), dismissButon: .default(Text("OK")))
    
    static let saveUserDataFailed = AlertItem(title: Text("Save Profile Failed"), message: Text("Failed save profile."), dismissButon: .default(Text("OK")))
    
    static let saveUserDataSuccess = AlertItem(title: Text("Save Profile Success"), message: Text("Profile save successfully"), dismissButon: .default(Text("OK")))
}
