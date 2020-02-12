//
//  Bus.swift
//  CarRentingSystem
//
//  Created by MacStudent on 2020-02-12.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class Bus: Vehicle
{
     var busType: String
     var iswifiAvailable: Bool
     var isAccessibiltyServiceAvailable: Bool
    init(identificationNumber: String,description: String,isSelfDrive: Bool, manufacturerName: String,isInsured: Bool,vehicleNoOfSeats: Int,   insuranceProviderName: String, seat: Int,fuelType: String,ratePerDay: Double,
    ratePerKm: Double, busType: String, iswifiAvailable:Bool,isAccessibiltyServiceAvailable: Bool){
        self.busType = busType
        self.iswifiAvailable = iswifiAvailable
        self.isAccessibiltyServiceAvailable = isAccessibiltyServiceAvailable
        super.init(identificationNumber: identificationNumber, description: description, isSelfDrive: isSelfDrive, manufacturerName: manufacturerName, isInsured: isInsured, vehicleNoOfSeats: vehicleNoOfSeats, insuranceProviderName: insuranceProviderName, seat: seat, fuelType: fuelType, ratePerDay: ratePerDay, ratePerKm: ratePerKm)
        
    }
    
    
    
}

