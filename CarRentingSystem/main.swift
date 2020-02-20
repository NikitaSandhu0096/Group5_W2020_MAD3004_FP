//
//  main.swift
//  CarRentingSystem
//
//  Created by MacStudent on 2020-02-12.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

print("Hello, World!")

var customer1 = Customer(id: 1, firstName: "Nikita", lastName: "Sandhu", gender: .Female, birthDate: "13/10/1994", mobileNumber: "1234567890", email: "nsandhu@gmail.com", userName: "nsandhu", password: "Nsandhu94".encrypt(key: "encrypt", iv: "encrypt") ?? "encrypt", address: "Yorkland Blvd", city: "Toronto")

var customer2 = Customer(id: 2, firstName: "kamalpreet", lastName: "kaur", gender: .Female, birthDate: "20/02/1998", mobileNumber: "4561589875", email: "kamalpreet34@gmail.com", userName: "kamalkaur", password: "kaur98".encrypt(key: "encrypt", iv: "encrypt") ?? "encrypt",address: "Speedwell Street", city: "Brampton")

var customer3 = Customer(id: 3, firstName: "Jyoti", lastName: "Thomas", gender: .Male, birthDate: "5/09/1990", mobileNumber: "4574359876", email: "jyotit123@gmail.com", userName: "jyotithomas", password: "thomas12".encrypt(key: "encrypt", iv: "encrypt") ?? "encrypt", address: "Shepherd Ave", city: "Scorbrough")

var customer4 = Customer(id: 4, firstName: "Avni", lastName: "Patel", gender: .Female, birthDate: "27/02/1992", mobileNumber: "7892584598", email: "avniPatel@yahoo.com", userName: "AvniPAtel", password: "patel92".encrypt(key: "encrypt", iv: "encrypt") ?? "encrypt", address: "Yonge Street", city: "Toronto")

var customer5 = Customer(id: 5, firstName: "Charmi", lastName: "Patel", gender: .Female, birthDate: "25/11/1993", mobileNumber: "6572583587", email: "patelCharmi34@outlook.com", userName: "charmi89", password: "charmi".encrypt(key: "encrypt", iv: "encrypt") ?? "encrypt", address: "Square One", city: "Missisauga")


var b1 = Bus(identificationNumber: "B01", description: "JBL enabled", isSelfDrive: false, manufacturerName: "Benz", isInsured: true, vehicleNoOfSeats: 20, insuranceProviderName: "Orient", seat: 20, fuelType: "Diesel", ratePerDay: 20, ratePerKm: 3, busType: "Volvo", iswifiAvailable: true, isAccessibiltyServiceAvailable: true)

var b2 = Bus(identificationNumber: "B02", description: "Customer-focused bifurcated group ware", isSelfDrive: false, manufacturerName: "Mercedes", isInsured: true, vehicleNoOfSeats: 24, insuranceProviderName: "TruSheild", seat: 24, fuelType: "Diesel", ratePerDay: 10 , ratePerKm: 2, busType: "Double Decker", iswifiAvailable: true, isAccessibiltyServiceAvailable: true)

var b3 = Bus(identificationNumber: "B03", description: "Focused actuating help-desk", isSelfDrive: false, manufacturerName: "Benz", isInsured: true, vehicleNoOfSeats: 18, insuranceProviderName:"Peter", seat: 18, fuelType: "Diesel", ratePerDay: 15, ratePerKm: 4.5, busType: "diesel", iswifiAvailable: false, isAccessibiltyServiceAvailable: true)

var b4 = Bus(identificationNumber: "B04", description: "Customer-focused bifurcated", isSelfDrive: false, manufacturerName: "Mercedes", isInsured: true, vehicleNoOfSeats: 45, insuranceProviderName: "MR.Yonge", seat: 45, fuelType: "Diesel", ratePerDay: 30, ratePerKm: 5, busType: "School Bus", iswifiAvailable: false, isAccessibiltyServiceAvailable: true)

var b5 = Bus(identificationNumber: "B05", description: "Customer-focused bifurcated", isSelfDrive: false, manufacturerName: "Benz", isInsured: true, vehicleNoOfSeats: 20, insuranceProviderName: "Orient", seat: 20, fuelType: "Diesel", ratePerDay: 22, ratePerKm: 5, busType: "City Transit", iswifiAvailable: true, isAccessibiltyServiceAvailable: false)

var c1 = Car(identificationNumber: "C01", description: "Sedan", isSelfDrive: true, manufacturerName: "Polo", isInsured: true, vehicleNoOfSeats: 4, insuranceProviderName: "National", seat: 4, fuelType: "Petrol", ratePerDay: 10, ratePerKm: 5, carColor: "White", carType: "Sedan")
var c2 = Car(identificationNumber: "C02", description: "SUV", isSelfDrive: true, manufacturerName: "Mahindra", isInsured: true, vehicleNoOfSeats: 5, insuranceProviderName: "Thomas", seat: 5, fuelType: "Petrol", ratePerDay: 12, ratePerKm: 3 , carColor: "Black", carType: "HatchBack")

var c3 = Car(identificationNumber: "C03", description: "Crossover", isSelfDrive: true, manufacturerName: "Nissan", isInsured: true, vehicleNoOfSeats: 7, insuranceProviderName: "Car Insaurance", seat: 5, fuelType: "Diesel", ratePerDay: 15, ratePerKm: 5, carColor: "White", carType: "CUV")


var c4 = Car(identificationNumber: "C04", description: "Convertible and Crossover", isSelfDrive: true, manufacturerName: "Lamborghini", isInsured: true, vehicleNoOfSeats: 2, insuranceProviderName: "Convertible Insaurances", seat: 2, fuelType: "Diesel", ratePerDay: 30, ratePerKm: 8, carColor: "Red", carType: "Convertible")

var c5 = Car(identificationNumber: "C05", description: "Mercedes Benz GLE Coupe", isSelfDrive: true, manufacturerName: "Mercedes", isInsured: true, vehicleNoOfSeats: 5, insuranceProviderName: "National", seat: 5, fuelType: "Diesel", ratePerDay: 30, ratePerKm: 5, carColor: "White", carType: "Passenger Car")

var rent1 = VehicleRent(vehicleIdentificationNumber: "C01", rentStartDate: "2012-09-01".toDate(), rentEndDate: "2012-10-01".toDate(), noOfKmDrived: 20)

var rent2 = VehicleRent(vehicleIdentificationNumber: "B01", rentStartDate: "2013-01-01".toDate(), rentEndDate: "2013-02-02".toDate(), noOfKmDrived: 200)

rent1.addVehicle(vehicle: b1, identificationNumber: b1.identificationNumber)
customer1.addVehicleRent(vehicleRent: rent1, vehicleIdentificationNumber: rent1.vehicleIdentificationNumber)

rent2.addVehicle(vehicle: c1, identificationNumber: c1.identificationNumber)
customer1.addVehicleRent(vehicleRent: rent2, vehicleIdentificationNumber: rent2.vehicleIdentificationNumber)

customer1.display()

// Decrypt the password
//print("EbMlRxcUH9TGJ3SxiEVzLA==".decrypt(key: "encrypt", iv: "encrypt") ?? "encrypt")



