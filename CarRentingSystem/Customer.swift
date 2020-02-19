//
//  Customer.swift
//  CarRentingSystem
//
//  Created by MacStudent on 2020-02-12.
//  Copyright © 2020 MacStudent. All rights reserved.
//
import Foundation

class Customer : Person{
    var id: Int
    var firstName: String
    var lastName: String
    var gender: Gender
    var birthDate: Date?
    var age: Int
    var mobileNumber: String
    var email: String
    var userName: String
    var password: String
    
    var address : String
    var city : String
    
    init(id: Int, firstName: String, lastName: String, gender: Gender, birthDate: Date, age: Int, mobileNumber: String, email: String, userName: String, password: String, address : String, city : String) {
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
        self.address = address
        self.city = city
    }
    
//    func Display()
//    {
//        print("Id : \(id)")
//            print("FirstName : \(firstName)")
//            print("LastName : \(lastName)")
//            print("Gender : \(gender)")
//            if let d = self.birthDate
//            {
//
//            print("BirthDate : \(d))")
//            }else
//            {
//                print("Birthdate : NO Birthdate Found")
//            }
//            print("Age : \(age)")
//            print("MobileNumber : \(mobileNumber)")
//            print("E-mail : \(email)")
//            print("UserName : \(userName)")
//            print("Password : \(password)")    }
    
     func Display() {
        print("Customer's ID \(id)")
        print("Customer's First Name \(firstName)")
        print("Customer's Last Name \(lastName)")
        print("Customer's gender \(gender)")
        print("Customer's Birth Date \(String(describing: birthDate))")
        print("Customer's Age \(age)")
        print("Customer's Mobile Number \(mobileNumber)")
        print("Customer's email \(email)")
        print("Customer's username \(userName)")
        print("Customer's password \(password)")
    }
}
