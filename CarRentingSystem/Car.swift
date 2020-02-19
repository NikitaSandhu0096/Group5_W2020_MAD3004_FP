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
    var carType: String
    var carColor: String
    init(identificationNumber:String,description:String,isSelfDrive:Bool,
         manufacturerName: String,isInsured: Bool,vehicleNoOfSeats:Int,insuranceProviderName: String, seat: Int,fuelType: String,ratePerDay: Double,ratePerKm: Double, carType: String, carColor: String) {
        super.init(identificationNumber:String,description:String,isSelfDrive:Bool,
        manufacturerName: String,isInsured: Bool,vehicleNoOfSeats:Int,insuranceProviderName: String, seat: Int,fuelType: String,ratePerDay: Double,ratePerKm: Double)
        self.carColor = carColor
        self.carType = carType
        
    }
    
    func Display() {
        print(carColor)
        print(carType)
    }
}
