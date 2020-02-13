//
//  Vehicle.swift
//  CarRentingSystem
//
//  Created by MacStudent on 2020-02-12.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation


class Vehicle: IDisplay
{
        
    var identificationNumber: String
    var description: String
    var  isSelfDrive: Bool
    var manufacturerName: String
    var  isInsured: Bool
    var  vehicleNoOfSeats: Int
    var insuranceProviderName: String
    var seat: Int
    var fuelType: String
    var ratePerDay: Double
    var ratePerKm: Double
    //var driver;
    
    init(identificationNumber: String,description: String,isSelfDrive: Bool, manufacturerName: String,isInsured: Bool,vehicleNoOfSeats: Int,   insuranceProviderName: String, seat: Int,fuelType: String,ratePerDay: Double,
    ratePerKm: Double) {
        self.identificationNumber = identificationNumber
        self.description = description
        self.isSelfDrive = isSelfDrive
        self.manufacturerName = manufacturerName
        self.isInsured = isInsured
        self.vehicleNoOfSeats = vehicleNoOfSeats
        self.insuranceProviderName = insuranceProviderName
        self.seat = seat
        self.fuelType = fuelType
        self.ratePerDay = ratePerDay
        self.ratePerKm = ratePerKm
    }
    
    func Display() {
        print("IdentificationNumber:        \(identificationNumber)")
        print("Description:                 \(description)")
        print("isSelfDrive:                 \(isSelfDrive)")
        print("ManufacturerName:            \(manufacturerName)")
        print("isInsured                       \(isInsured)")
        print("VehicleNoOfSeats:                \(vehicleNoOfSeats)")
        print("InsuranceProviderName            \(insuranceProviderName)")
        print("Seat                             \(seat)")
        print("FuelType:                        \(fuelType)")
        print("RatePerDay:                      \(ratePerDay)")
        print("ratePerKm:                       \(ratePerKm)")
    }
}
