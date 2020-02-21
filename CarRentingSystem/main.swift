//
//  main.swift
//  CarRentingSystem
//
//  Created by MacStudent on 2020-02-12.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

// Customer Objects
var customer1 = Customer(id: 1, firstName: "Nikita", lastName: "Sandhu", gender: .Female, birthDate: "13/10/1994", mobileNumber: "1234567890", email: "nsandhu@gmail.com", userName: "nsandhu", password: "Nsandhu94".encrypt(key: "encrypt", iv: "encrypt") ?? "encrypt", address: "Yorkland Blvd", city: "Toronto")
var customer2 = Customer(id: 2, firstName: "kamalpreet", lastName: "kaur", gender: .Female, birthDate: "20/02/1998", mobileNumber: "4561589875", email: "kamalpreet34@gmail.com", userName: "kamalkaur", password: "kaur98".encrypt(key: "encrypt", iv: "encrypt") ?? "encrypt",address: "Speedwell Street", city: "Brampton")
var customer3 = Customer(id: 3, firstName: "Jyoti", lastName: "Thomas", gender: .Male, birthDate: "5/09/1990", mobileNumber: "4574359876", email: "jyotit123@gmail.com", userName: "jyotithomas", password: "thomas12".encrypt(key: "encrypt", iv: "encrypt") ?? "encrypt", address: "Shepherd Ave", city: "Scorbrough")
var customer4 = Customer(id: 4, firstName: "Avni", lastName: "Patel", gender: .Female, birthDate: "27/02/1992", mobileNumber: "7892584598", email: "avniPatel@yahoo.com", userName: "AvniPAtel", password: "patel92".encrypt(key: "encrypt", iv: "encrypt") ?? "encrypt", address: "Yonge Street", city: "Toronto")
var customer5 = Customer(id: 5, firstName: "Charmi", lastName: "Patel", gender: .Female, birthDate: "25/11/1993", mobileNumber: "6572583587", email: "patelCharmi34@outlook.com", userName: "charmi89", password: "charmi".encrypt(key: "encrypt", iv: "encrypt") ?? "encrypt", address: "Square One", city: "Missisauga")

// Bus objects
var b1 = Bus(identificationNumber: "B01", description: "JBL enabled",isSelfDrive: false, manufacturerName: "Benz", isInsured: true, vehicleNoOfSeats: 20, insuranceProviderName: "Orient", fuelType: "Diesel", ratePerDay: 20, ratePerKm: 3, busType: "Volvo", iswifiAvailable: true, isAccessibiltyServiceAvailable: true)
var b2 = Bus(identificationNumber: "B02", description: "Customer-focused bifurcated group ware", isSelfDrive: false, manufacturerName: "Mercedes", isInsured: true, vehicleNoOfSeats: 24, insuranceProviderName: "TruSheild", fuelType: "Diesel", ratePerDay: 10 , ratePerKm: 2, busType: "Double Decker", iswifiAvailable: true, isAccessibiltyServiceAvailable: true)
var b3 = Bus(identificationNumber: "B03", description: "Focused actuating help-desk", isSelfDrive: false, manufacturerName: "Benz", isInsured: true, vehicleNoOfSeats: 18, insuranceProviderName:"Peter",  fuelType: "Diesel", ratePerDay: 15, ratePerKm: 4.5, busType: "diesel", iswifiAvailable: false, isAccessibiltyServiceAvailable: true)
var b4 = Bus(identificationNumber: "B04", description: "Customer-focused bifurcated", isSelfDrive: false, manufacturerName: "Mercedes", isInsured: true, vehicleNoOfSeats: 45, insuranceProviderName: "MR.Yonge",  fuelType: "Diesel", ratePerDay: 30, ratePerKm: 5, busType: "School Bus", iswifiAvailable: false, isAccessibiltyServiceAvailable: true)
var b5 = Bus(identificationNumber: "B05", description: "Customer-focused bifurcated", isSelfDrive: false, manufacturerName: "Benz", isInsured: true, vehicleNoOfSeats: 20, insuranceProviderName: "Orient", fuelType: "Diesel", ratePerDay: 22, ratePerKm: 5, busType: "City Transit", iswifiAvailable: true, isAccessibiltyServiceAvailable: false)

// driver objects

var d1 = Driver(id: 01, firstName: "Vel", lastName: "Ratan", gender: .Male, birthDate: "14/11/1995", mobileNumber: "2546572334", email: "ratvel234@out.com", userName: "retvel21", password: "dster543", drivingLicenseNumber: "DRI123", isDrivingHistoryCleared: true, salary: 1000)

var d2 = Driver(id: 02, firstName: "Kartik", lastName: "Sharma", gender: .Male, birthDate: "12/06/1992", mobileNumber: "4562583579", email: "kartik34@yahoo.com", userName: "Skartik", password: "kartik".encrypt(key: "encrypt", iv: "encrypt") ?? "encrypt", drivingLicenseNumber: "C01147-9875-4598", isDrivingHistoryCleared: true, salary: 500)

var d3 = Driver(id: 03, firstName: "Markham", lastName: "Ellacot", gender: .Male, birthDate: "04/01/1993", mobileNumber: "6583249856", email: "Merel93@yahoo.com", userName: "merel", password: "Ellocat".encrypt(key: "encrypt", iv: "encrypt") ?? "encrypt", drivingLicenseNumber: "C0987-5289-3412", isDrivingHistoryCleared: true, salary: 640)

var d4 = Driver(id: 04, firstName: "Pritam", lastName: "Singh", gender: .Male, birthDate: "12/12/1995", mobileNumber: "9872571257", email: "singhpritam@outlook.com", userName: "pritamS", password: "Singh".encrypt(key: "encrypt", iv: "encrypt")?? "encrypt", drivingLicenseNumber: "C0451-7157-6825", isDrivingHistoryCleared: true, salary: 500)



// Car objects
var c1 = Car(identificationNumber: "C01", description: "Sedan", isSelfDrive: false, manufacturerName: "Polo", isInsured: true, insuranceProviderName: "National", vehicleNoOfSeats: 4, fuelType: "Petrol", ratePerDay: 10, ratePerKm: 5, carColor: "White", carType: "Sedan")
if (c1.isSelfDrive == false){
    c1.addDriver(drivers: d1, driverId: d1.id)
}

var c2 = Car(identificationNumber: "C02", description: "SUV", isSelfDrive: true, manufacturerName: "Mahindra", isInsured: true, insuranceProviderName: "Thomas", vehicleNoOfSeats: 5, fuelType: "Petrol", ratePerDay: 12, ratePerKm: 3 , carColor: "Black", carType: "HatchBack")


var c3 = Car(identificationNumber: "C03", description: "Crossover", isSelfDrive: true, manufacturerName: "Nissan", isInsured: true, insuranceProviderName: "Car Insaurance", vehicleNoOfSeats: 7, fuelType: "Diesel", ratePerDay: 15, ratePerKm: 5, carColor: "White", carType: "CUV")
var c4 = Car(identificationNumber: "C04", description: "Convertible and Crossover", isSelfDrive: true, manufacturerName: "Lamborghini", isInsured: true, insuranceProviderName: "Convertible Insaurances", vehicleNoOfSeats: 2, fuelType: "Diesel", ratePerDay: 30, ratePerKm: 8, carColor: "Red", carType: "Convertible")
var c5 = Car(identificationNumber: "C05", description: "Mercedes Benz GLE Coupe", isSelfDrive: true, manufacturerName: "Mercedes", isInsured: true, insuranceProviderName: "National", vehicleNoOfSeats: 5, fuelType: "Diesel", ratePerDay: 30, ratePerKm: 5, carColor: "White", carType: "Passenger Car")

// MotorCycle objects
var mc1 = MotorCycle(identificationNumber: "MC01", description: "Classic",manufacturerName: "Bajaj", isSelfDrive: true, isInsured: true,  insuranceProviderName: "Overseas",vehicleNoOfSeats: 2,fuelType: "Petrol", ratePerDay: 5, ratePerKm: 5, maxTopSpeed: 60, milage: 25)
var mc2 = MotorCycle(identificationNumber: "MC02", description: "Thunderbird",manufacturerName: "Bullet",isSelfDrive: true,  isInsured: true, insuranceProviderName: "Nation", vehicleNoOfSeats: 2, fuelType: "Petrol", ratePerDay: 5, ratePerKm: 5, maxTopSpeed: 50, milage: 35)
var mc3 = MotorCycle(identificationNumber: "MC03", description: "Chronic", manufacturerName: "Yamaha", isSelfDrive: true, isInsured: true, insuranceProviderName: "Oriental", vehicleNoOfSeats: 2,  fuelType: "Petrol", ratePerDay: 5, ratePerKm: 5, maxTopSpeed: 40, milage: 40)
var mc4 = MotorCycle(identificationNumber: "MC04", description: "Chrome", manufacturerName: "Pulsar", isSelfDrive: true, isInsured: true, insuranceProviderName: "Hero", vehicleNoOfSeats: 2,  fuelType: "Petrol", ratePerDay: 5, ratePerKm: 5, maxTopSpeed: 70, milage: 25)
var mc5 = MotorCycle(identificationNumber: "MC05", description: "Classic", manufacturerName: "Honda", isSelfDrive: true, isInsured: true, insuranceProviderName: "Philo", vehicleNoOfSeats: 2,  fuelType: "Petrol", ratePerDay: 5, ratePerKm: 5, maxTopSpeed: 60, milage: 55)



var rent1 = VehicleRent(vehicleIdentificationNumber: "C01", rentStartDate: "2012-09-01".toDate(), rentEndDate: "2012-10-01".toDate(), noOfKmDrived: 20)

var rent2 = VehicleRent(vehicleIdentificationNumber: "B01", rentStartDate: "2013-01-01".toDate(), rentEndDate: "2013-02-02".toDate(), noOfKmDrived: 200)

rent1.addVehicle(vehicle: b1, identificationNumber: b1.identificationNumber)
if(b1.isSelfDrive != true)
{
    b1.addDriver(drivers: d1, driverId: d1.id)
}
customer1.addVehicleRent(vehicleRent: rent1, vehicleIdentificationNumber: rent1.vehicleIdentificationNumber)


rent2.addVehicle(vehicle: c1, identificationNumber: c1.identificationNumber)
customer1.addVehicleRent(vehicleRent: rent2, vehicleIdentificationNumber: rent2.vehicleIdentificationNumber)

customer1.display()

// Decrypt the password
//print("EbMlRxcUH9TGJ3SxiEVzLA==".decrypt(key: "encrypt", iv: "encrypt") ?? "encrypt")


var owner1 = Owner(id: 1, firstName: "Nikita", lastName: "Sandhu", gender: .Female, birthDate: "13/10/1994", mobileNumber: "1234567890", email: "asdasf", userName: "sfasf", password: "safsdf", companyTitle: "afsaf", businessLandLineNumber: "sfdf", website: "sff")

owner1.addVehicleOwned(vehicleOwned: c1, vehicleIdentificationNumber: c1.identificationNumber)

owner1.display()
