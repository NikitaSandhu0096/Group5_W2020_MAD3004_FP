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
    var birthDate: String
    var age: Int = 0
    var mobileNumber: String
    var email: String
    var userName: String
    var password: String
    
    var address : String
    var city : String
    var vehicleListRented = [String : VehicleRent]()
    
//    required init(id: Int, firstName: String, lastName: String, gender: Gender, birthDate: String, age: Int, mobileNumber: String, email: String, userName: String, password: String) {
//        self.id = id
//        self.firstName = firstName
//        self.lastName = lastName
//        self.gender = gender
//        self.birthDate = birthDate
//        self.age = age
//        self.mobileNumber = mobileNumber
//        self.email = email
//        self.userName = userName
//        self.password = password
//    }
    
    init(id: Int, firstName: String, lastName: String, gender: Gender, birthDate: String, mobileNumber: String, email: String, userName: String, password: String, address : String, city : String) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.gender = gender
        self.birthDate = birthDate
        self.mobileNumber = mobileNumber
        self.email = email
        self.userName = userName
        self.password = password
        self.address = address
        self.city = city
    }
    
    func calculateBirthDate(string : String) -> String {      //https://stackoverflow.com/questions/35700281/date-format-in-swift
        
        let dateformatGet1 = DateFormatter()
        dateformatGet1.dateFormat = "dd/MM/yyyy"
        
        let dateformatSet1 = DateFormatter()
        dateformatSet1.dateFormat = "dd/MM/yyyy"
     
        let birthDate1 : Date? = dateformatGet1.date(from: birthDate)
        return dateformatSet1.string(from: birthDate1!)
    }
    
    func addVehicleRent(vehicleRent: VehicleRent, vehicleIdentificationNumber: String)
    {
        vehicleListRented.updateValue(vehicleRent, forKey: vehicleIdentificationNumber)
    }
    
    func removeVehicleRent(vehicleIdentificationNumber: String)
    {
        vehicleListRented.removeValue(forKey: vehicleIdentificationNumber)
    }
    
    
    /*func calculateAge() -> Int{            //https://stackoverflow.com/questions/24723431/swift-days-between-two-nsdates
        
        let now = Date()
        let current = Calendar.current
        let numberOfYears = current.dateComponents([Calendar.Component.year], from: calculateBirthDate(string: birthDate), to: now)
        return numberOfYears.year!
    }*/
    
     func display() {
        print("*******************Customer***********************************")
        print("Customer's ID:                                       \(id)")
        print("Customer's First Name:                               \(firstName)")
        print("Customer's Last Name:                                \(lastName)")
        print("Customer's gender:                                   \(gender)")
        print("Customer's Birth Date:                               \(calculateBirthDate(string:birthDate))")
      //  print("Customer's Age \(calculateAge())")
        print("Customer's Mobile Number:                            \(mobileNumber)")
        print("Customer's email:                                    \(email)")
        print("Customer's username:                                 \(userName)")
        print("Customer's password:                                 \(password)")
        print("Customer's Address:                                  \(address)")
        print("Customer's City:                                     \(city)")
        for v in vehicleListRented
            {
                v.value.display()
            }
             if vehicleListRented.count == 0
            {
                print("This person has no vehicles rented")
            }
        //print("Customer's Vehicle list rented \(vehicleListRented)")
    }
}
