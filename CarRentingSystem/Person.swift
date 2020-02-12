//
//  Person.swift
//  CarRentingSystem
//
//  Created by MacStudent on 2020-02-12.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

enum Gender{
    case Male
    case Female
    case Others
}

class Person : IDisplay
{
    
    
    var id : Int
    var firstName : String
    var lastName : String
    var gender : Gender
    var birthDate : Date?
    var age : Int
    var mobileNumber : String
    var email : String
    var userName : String
    var password : String
    
    init(id : Int,firstName : String,lastName : String,gender : Gender,birthDate: Date,age : Int,mobileNumber : String,email : String,userName :String,password : String)
    {
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
        
    }
    func Display()
    {
    }
   
}
