//
//  Vehicle.swift
//  CarRentingSystem
//
//  Created by MacStudent on 2020-02-12.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation


protocol Vehicle: IDisplay
{

    var identificationNumber: String { get set }
    var description: String { get set }
    var  isSelfDrive: Bool { get set }
    var manufacturerName: String { get set }
    var  isInsured: Bool { get set }
    var  vehicleNoOfSeats: Int { get set }
    var insuranceProviderName: String { get set }
    var seat: Int { get set }
    var fuelType: String { get set }
    var ratePerDay: Double { get set }
    var ratePerKm: Double { get set}
    //var driver;
    
   /* init(identificationNumber:String,description:String,isSelfDrive:Bool,
     manufacturerName: String,isInsured: Bool,vehicleNoOfSeats:Int,insuranceProviderName: String, seat: Int,fuelType: String,ratePerDay: Double,ratePerKm: Double)

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
        self.ratePerKm = ratePerKm*/
    
    
    func Display()
    /*
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
    }*/
}

