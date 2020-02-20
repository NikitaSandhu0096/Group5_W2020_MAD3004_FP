//
//  Driver.swift
//  CarRentingSystem
//
//  Created by Nikita Sandhu on 2020-02-19.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class Driver : Person{
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
    
    var drivingLicenseNumber : String
    var isDrivingHistoryCleared : Bool
    var salary : Int
    
    init(id: Int, firstName: String, lastName: String, gender: Gender, birthDate: String, age: Int, mobileNumber: String, email: String, userName: String, password: String, drivingLicenseNumber : String, isDrivingHistoryCleared : Bool, salary : Int) {
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
        self.drivingLicenseNumber = drivingLicenseNumber
        self.isDrivingHistoryCleared = isDrivingHistoryCleared
        self.salary = salary
    }
    
    func calculatebirthDate(string : String) -> Date {      //https://stackoverflow.com/questions/35700281/date-format-in-swift
        
        let dateformatGet1 = DateFormatter()
        dateformatGet1.dateFormat = "dd/MM/yyyy"
     
        let birthDate1 : Date? = dateformatGet1.date(from: birthDate)
        return birthDate1!
    }
    
     func display() {
        print("Driver's ID \(id)")
        print("Driver's First Name \(firstName)")
        print("Driver's Last Name \(lastName)")
        print("Driver's gender \(gender)")
        print("Driver's Birth Date \(calculatebirthDate(string: birthDate))")
        print("Driver's Age \(age)")
        print("Driver's Mobile Number \(mobileNumber)")
        print("Driver's email \(email)")
        print("Driver's username \(userName)")
        print("Driver's password \(password)")
        print("Driver's Address \(drivingLicenseNumber)")
        print("Driver's City \(isDrivingHistoryCleared)")
        print("Driver's Salary \(salary)")
    }
}
