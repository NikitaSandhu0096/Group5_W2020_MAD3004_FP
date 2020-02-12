//
//  Customer.swift
//  CarRentingSystem
//
//  Created by MacStudent on 2020-02-12.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class Customer : Person{
    var address : String
    var city : String
    
    init(id: Int, firstName: String, lastName: String, gender: Gender, birthDate: Date, _: (), age: Int, mobileNumber: String, email: String, userName: String, password: String) {
        super.init(id: id, firstName: firstName, lastName: lastName, gender: gender, birthDate: birthDate, age: age, mobileNumber: mobileNumber, email: email, userName: userName, password: password)
        self.address = address
        self.city = city
    }
}
