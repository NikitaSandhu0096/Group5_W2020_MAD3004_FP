//
//  main.swift
//  CarRentingSystem
//
//  Created by MacStudent on 2020-02-12.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

print("Hello, World!")

var customer1 = Customer(id: 1, firstName: "Nikita", lastName: "Sandhu", gender: .Female, birthDate: "13/10/1994", mobileNumber: "1234567890", email: "nsandhu@gmail.com", userName: "nsandhu", password: "Nsandhu94".encrypt(), address: "Yorkland Blvd", city: "Toronto")

var customer2 = Customer(id: 2, firstName: "kamalpreet", lastName: "kaur", gender: .Female, birthDate: "20/02/1998", mobileNumber: "4561589875", email: "kamalpreet34@gmail.com", userName: "kamalkaur", password: "kaur98".encrypt(), address: "Speedwell Street", city: "Brampton")


var b1 = Bus(identificationNumber: "B01", description: "JBL enabled", isSelfDrive: false, manufacturerName: "Benz", isInsured: true, vehicleNoOfSeats: 20, insuranceProviderName: "Orient", seat: 20, fuelType: "Diesel", ratePerDay: 20, ratePerKm: 20, busType: "Volvo", iswifiAvailable: true, isAccessibiltyServiceAvailable: true)

var c1 = Car(identificationNumber: "C01", description: "Sedan", isSelfDrive: true, manufacturerName: "Polo", isInsured: true, vehicleNoOfSeats: 4, insuranceProviderName: "National", seat: 4, fuelType: "Petrol", ratePerDay: 10, ratePerKm: 5, carColor: "White", carType: "Sedan")
var rent1 = VehicleRent(vehicleIdentificationNumber: "C01", rentStartDate: "2012-09-01".toDate(), rentEndDate: "2012-10-01".toDate(), noOfKmDrived: 20)

var rent2 = VehicleRent(vehicleIdentificationNumber: "B01", rentStartDate: "2013-01-01".toDate(), rentEndDate: "2013-02-02".toDate(), noOfKmDrived: 200)

rent1.addVehicle(vehicle: b1, identificationNumber: b1.identificationNumber)
customer1.addVehicleRent(vehicleRent: rent1, vehicleIdentificationNumber: rent1.vehicleIdentificationNumber)

rent2.addVehicle(vehicle: c1, identificationNumber: c1.identificationNumber)
customer1.addVehicleRent(vehicleRent: rent2, vehicleIdentificationNumber: rent2.vehicleIdentificationNumber)

customer1.display()



