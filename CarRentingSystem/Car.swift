//
//  Car.swift
//  CarRentingSystem
//
//  Created by MacStudent on 2020-02-19.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class Car: Vehicle
{
    var identificationNumber: String
    
    var description: String
    
    var isSelfDrive: Bool
    
    var manufacturerName: String
    
    var isInsured: Bool
    
    var vehicleNoOfSeats: Int
    
    var insuranceProviderName: String
    
    var seat: Int
    
    var fuelType: String
    
    var ratePerDay: Double
    
    var ratePerKm: Double
    
    required init(identificationNumber: String, description: String, isSelfDrive: Bool, manufacturerName: String, isInsured: Bool, vehicleNoOfSeats: Int, insuranceProviderName: String, seat: Int, fuelType: String, ratePerDay: Double, ratePerKm: Double) {
        <#code#>
    }
    
    var carType: String
    var carColor: String
    init(identificationNumber:String,description:String,isSelfDrive:Bool,
         manufacturerName: String,isInsured: Bool,vehicleNoOfSeats:Int,insuranceProviderName: String, seat: Int,fuelType: String,ratePerDay: Double,ratePerKm: Double, carType: String, carColor: String) {
        self.carColor = carColor
        self.carType = carType
        
    }
    
     func Display() {
        print("carColor:        \(carColor)")
        print("carType:         \(carType)")
    }
}
