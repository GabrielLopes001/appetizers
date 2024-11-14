//
//  User.swift
//  Appetizers
//
//  Created by Gabriel Lopes on 13/11/24.
//

import Foundation


struct User: Codable {
    var firstName       = ""
    var lastName        = ""
    var email           = ""
    var birthday        = Date()
    var extraNapkins    = false
    var frequentRefills = false
}
