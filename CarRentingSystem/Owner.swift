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
    var vehicleListOwned = [String : Vehicle]()
    
    init(id: Int, firstName: String, lastName: String, gender: Gender, birthDate: String, age: Int, mobileNumber: String, email: String, userName: String, password: String, companyTitle : String, businessLandLineNumber : String, website : String) {
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
    }
    
    func calculateBirthDate(string : String) -> Date {      //https://stackoverflow.com/questions/35700281/date-format-in-swift
        
        let dateformatGet1 = DateFormatter()
        dateformatGet1.dateFormat = "dd/MM/yyyy"
     
        let birthDate1 : Date? = dateformatGet1.date(from: birthDate)
        return birthDate1!
    }
    
    func calculateAge() -> Int{            //https://stackoverflow.com/questions/24723431/swift-days-between-two-nsdates
        
        let now = Date()
        let current = Calendar.current
        let numberOfYears = current.dateComponents([Calendar.Component.year], from: calculateBirthDate(string: birthDate), to: now)
        return numberOfYears.year!
    }
    
    
     func display() {
        print("Owner's ID : \(self.id)")
        print("Owner's First Name : \(self.firstName)")
        print("Owner's Last Name : \(self.lastName)")
        print("Owner's gender : \(self.gender)")
        print("Owner's Birth Date : \(self.birthDate)")
        print("Owner's Age : \(calculateAge())")
        print("Owner's Mobile Number : \(self.mobileNumber)")
        print("Owner's email : \(self.email)")
        print("Owner's username : \(self.userName)")
        print("Owner's password : \(self.password)")
        print("Owner's Address : \(self.companyTitle)")
        print("Owner's City : \(self.businessLandLineNumber)")
        print("Owner's Salary : \(self.website)")
        print("Owner's Vehicle List Owned : \(self.vehicleListOwned)")
    }
}
