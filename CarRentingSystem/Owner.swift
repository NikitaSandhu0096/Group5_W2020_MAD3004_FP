//
//  Owner.swift
//  CarRentingSystem
//
//  Created by Nikita Sandhu on 2020-02-19.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class Owner : Person{
    var id: Int
    var firstName: String
    var lastName: String
    var gender: Gender
    var birthDate: String
    var age: Int
    var mobileNumber: String
    var email: String
    var userName: String
    var password: String
    
    var companyTitle : String
    var businessLandLineNumber : String
    var website : String
    var vehicleListOwned : String
    
    init(id: Int, firstName: String, lastName: String, gender: Gender, birthDate: String, age: Int, mobileNumber: String, email: String, userName: String, password: String, companyTitle : String, businessLandLineNumber : String, website : String, vehicleListOwned : String) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.gender = gender
        self.birthDate = birthDate
        self.age = age
        self.mobileNumber = mobileNumber
        self.email = email
        self.userName = userName
        self.password = password
        self.companyTitle = companyTitle
        self.businessLandLineNumber = businessLandLineNumber
        self.website = website
        self.vehicleListOwned = vehicleListOwned
    }
    
    func calculatebirthDate(string : String) -> Date {      //https://stackoverflow.com/questions/35700281/date-format-in-swift
        
        let dateformatGet1 = DateFormatter()
        dateformatGet1.dateFormat = "dd/MM/yyyy"
     
        let birthDate1 : Date? = dateformatGet1.date(from: birthDate)
        return birthDate1!
    }
    
     func display() {
        print("Owner's ID \(id)")
        print("Owner's First Name \(firstName)")
        print("Owner's Last Name \(lastName)")
        print("Owner's gender \(gender)")
        print("Owner's Birth Date \(calculatebirthDate(string: birthDate))")
        print("Owner's Age \(age)")
        print("Owner's Mobile Number \(mobileNumber)")
        print("Owner's email \(email)")
        print("Owner's username \(userName)")
        print("Owner's password \(password)")
        print("Owner's Address \(companyTitle)")
        print("Owner's City \(businessLandLineNumber)")
        print("Owner's Salary \(website)")
        print("Owner's Vehicle List Owned \(vehicleListOwned)")
    }
}
