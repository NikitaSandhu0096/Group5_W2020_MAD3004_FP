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
    
    init(id: Int, firstName: String, lastName: String, gender: Gender, birthDate: Date, age: Int, mobileNumber: String, email: String, userName: String, password: String, address : String, city : String) {
        super.init(id: id, firstName: firstName, lastName: lastName, gender: gender, birthDate: birthDate, age: age, mobileNumber: mobileNumber, email: email, userName: userName, password: password)
        self.address = address
        self.city = city
    }
    
    override func Display() {
        print("Customer's ID \(id)")
        print("Customer's First Name \(firstName)")
        print("Customer's Last Name \(lastName)")
        print("Customer's gender \(gender)")
        print("Customer's Birth Date \(birthDate)")
        print("Customer's Age \(age)")
        print("Customer's Mobile Number \(mobileNumber)")
        print("Customer's email \(email)")
        print("Customer's username \(userName)")
        print("Customer's password \(password)")
    }
}
