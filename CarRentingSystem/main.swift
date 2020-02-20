//
//  main.swift
//  CarRentingSystem
//
//  Created by MacStudent on 2020-02-12.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

print("Hello, World!")

var temp = Customer(id: 1, firstName: "Nikita", lastName: "Sandhu", gender: .Female, birthDate: "13/10/1994", mobileNumber: "1234567890", email: "nsandhu@gmail.com", userName: "nsandhu", password: "assfdfg", address: "adsasf", city: "asdasf")

//temp.display()


var b1 = Bus(identificationNumber: "B01", description: "JBL enabled", isSelfDrive: false, manufacturerName: "Benz", isInsured: true, vehicleNoOfSeats: 20, insuranceProviderName: "Orient", seat: 20, fuelType: "Diesel", ratePerDay: 20, ratePerKm: 20, busType: "Volvo", iswifiAvailable: true, isAccessibiltyServiceAvailable: true)


var rent1 = VehicleRent(vehicleIdentificationNumber: "B01", rentStartDate: "2012-09-09".toDate(), rentEndDate: "2012-10-10".toDate(), noOfKmDrived: 200)
rent1.addVehicle(vehicle: b1, identificationNumber: b1.identificationNumber)

temp.addVehicleRent(vehicleRent: rent1, vehicleIdentificationNumber: rent1.vehicleIdentificationNumber)

temp.display()



