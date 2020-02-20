//
//  Bus.swift
//  CarRentingSystem
//
//  Created by MacStudent on 2020-02-12.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class MotorCycle : Vehicle
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
    
         var maxTopSpeed: String
         var milage: String
           
    init(identificationNumber: String, description: String, isSelfDrive: Bool, manufacturerName: String, isInsured: Bool, vehicleNoOfSeats: Int, insuranceProviderName: String, seat: Int, fuelType: String, ratePerDay: Double, ratePerKm: Double, maxTopSpeed : String, milage : String)
         {
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
             self.maxTopSpeed = maxTopSpeed
            self.milage = milage
         }
          
         func display()
         {
             print("Motorcycle's IdentificationNumber:        \(identificationNumber)")
             print("Motorcycle's Description:                 \(description)")
             print("Motorcycle's isSelfDrive:                 \(isSelfDrive)")
             print("Motorcycle's ManufacturerName:            \(manufacturerName)")
             print("Motorcycle's isInsured                       \(isInsured)")
             print("Motorcycle's VehicleNoOfSeats:                \(vehicleNoOfSeats)")
             print("Motorcycle's InsuranceProviderName            \(insuranceProviderName)")
             print("Motorcycle's Seat                             \(seat)")
             print("Motorcycle's FuelType:                        \(fuelType)")
             print("Motorcycle's RatePerDay:                      \(ratePerDay)")
             print("Motorcycle's ratePerKm:                       \(ratePerKm)")
        }
}


