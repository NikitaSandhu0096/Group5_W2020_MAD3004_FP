//
//  main.swift
//  CarRentingSystem
//
//  Created by MacStudent on 2020-02-12.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

// Customer Objects
var customer1 =  Customer(id: 1, firstName: "Nikita", lastName: "Sandhu", gender: .Female, birthDate: "13/10/1994", mobileNumber: "1234567890", email: "nsandhu@gmail.com", userName: "nsandhu", password: "Nsandhu94".encrypt(key: "encrypt", iv: "encrypt") ?? "encrypt", address: "Yorkland Blvd", city: "Toronto")
var customer2 =  Customer(id: 2, firstName: "kamalpreet", lastName: "kaur", gender: .Female, birthDate: "20/02/1998", mobileNumber: "4561589875", email: "kamalpreet34@gmail.com", userName: "kamalkaur", password: "kaur98".encrypt(key: "encrypt", iv: "encrypt") ?? "encrypt",address: "Speedwell Street", city: "Brampton")
var customer3 =  Customer(id: 3, firstName: "Jyothi", lastName: "Thomas", gender: .Male, birthDate: "5/09/1990", mobileNumber: "4574359876", email: "jyotit123@gmail.com", userName: "jyotithomas", password: "thomas12".encrypt(key: "encrypt", iv: "encrypt") ?? "encrypt", address: "Shepherd Ave", city: "Scorbrough")
var customer4 =  Customer(id: 4, firstName: "Avni", lastName: "Patel", gender: .Female, birthDate: "27/02/1992", mobileNumber: "7892584598", email: "avniPatel@yahoo.com", userName: "AvniPAtel", password: "patel92".encrypt(key: "encrypt", iv: "encrypt") ?? "encrypt", address: "Yonge Street", city: "Toronto")
var customer5 =  Customer(id: 5, firstName: "Charmi", lastName: "Patel", gender: .Female, birthDate: "25/11/1993", mobileNumber: "6572583587", email: "patelCharmi34@outlook.com", userName: "charmi89", password: "charmi".encrypt(key: "encrypt", iv: "encrypt") ?? "encrypt", address: "Square One", city: "Missisauga")


// driver objects

var d1 = Driver(id: 01, firstName: "Vel", lastName: "Ratan", gender: .Male, birthDate: "14/11/1995", mobileNumber: "2546572334", email: "ratvel234@out.com", userName: "retvel21", password: "dster543", drivingLicenseNumber: "DRI123", isDrivingHistoryCleared: true, salary: 1000)

var d2 = Driver(id: 02, firstName: "Kartik", lastName: "Sharma", gender: .Male, birthDate: "12/06/1992", mobileNumber: "4562583579", email: "kartik34@yahoo.com", userName: "Skartik", password: "kartik".encrypt(key: "encrypt", iv: "encrypt") ?? "encrypt", drivingLicenseNumber: "C01147-9875-4598", isDrivingHistoryCleared: true, salary: 500)

var d3 = Driver(id: 03, firstName: "Markham", lastName: "Ellacot", gender: .Male, birthDate: "04/01/1993", mobileNumber: "6583249856", email: "Merel93@yahoo.com", userName: "merel", password: "Ellocat".encrypt(key: "encrypt", iv: "encrypt") ?? "encrypt", drivingLicenseNumber: "C0987-5289-3412", isDrivingHistoryCleared: true, salary: 640)

var d4 = Driver(id: 04, firstName: "Pritam", lastName: "Singh", gender: .Male, birthDate: "12/12/1995", mobileNumber: "9872571257", email: "singhpritam@outlook.com", userName: "pritamS", password: "Singh".encrypt(key: "encrypt", iv: "encrypt") ?? "encrypt", drivingLicenseNumber: "C0451-7157-6825", isDrivingHistoryCleared: true, salary: 800)

var d5 = Driver(id: 05, firstName: "Jasmine", lastName: "sharma", gender: .Female, birthDate: "07/09/1990", mobileNumber: "6579246574", email: "jasmins36@gmail.com", userName: "sharmaJas", password: "jasmine".encrypt(key: "encrypt", iv: "encrypt") ?? "encrypt", drivingLicenseNumber: "C0983-6754-3421", isDrivingHistoryCleared: true, salary: 1000)

// Bus objects
var b1 = Bus(identificationNumber: "B01", description: "JBL enabled",isSelfDrive: false, manufacturerName: "Benz", isInsured: true, vehicleNoOfSeats: 20, insuranceProviderName: "Orient", fuelType: "Diesel", ratePerDay: 20, ratePerKm: 3, busType: "Volvo", iswifiAvailable: true, isAccessibiltyServiceAvailable: true)
if (b1.isSelfDrive == false){
    b1.addDriver(drivers: d1, driverId: d1.id)
}
var b2 = Bus(identificationNumber: "B02", description: "Customer-focused bifurcated group ware", isSelfDrive: false, manufacturerName: "Mercedes", isInsured: true, vehicleNoOfSeats: 24, insuranceProviderName: "TruSheild", fuelType: "Diesel", ratePerDay: 10 , ratePerKm: 2, busType: "Double Decker", iswifiAvailable: true, isAccessibiltyServiceAvailable: true)
if (b2.isSelfDrive == false){
    b2.addDriver(drivers: d2, driverId: d2.id)
}
var b3 = Bus(identificationNumber: "B03", description: "Focused actuating help-desk", isSelfDrive: false, manufacturerName: "Benz", isInsured: true, vehicleNoOfSeats: 18, insuranceProviderName:"Peter",  fuelType: "Diesel", ratePerDay: 15, ratePerKm: 4.5, busType: "diesel", iswifiAvailable: false, isAccessibiltyServiceAvailable: true)
if (b3.isSelfDrive == false){
    b3.addDriver(drivers: d3, driverId: d3.id)
}
var b4 = Bus(identificationNumber: "B04", description: "Customer-focused bifurcated", isSelfDrive: false, manufacturerName: "Mercedes", isInsured: true, vehicleNoOfSeats: 45, insuranceProviderName: "MR.Yonge",  fuelType: "Diesel", ratePerDay: 30, ratePerKm: 5, busType: "School Bus", iswifiAvailable: false, isAccessibiltyServiceAvailable: true)
if (b4.isSelfDrive == false){
    b4.addDriver(drivers: d4, driverId: d4.id)
}
var b5 = Bus(identificationNumber: "B05", description: "Customer-focused bifurcated", isSelfDrive: false, manufacturerName: "Benz", isInsured: true, vehicleNoOfSeats: 20, insuranceProviderName: "Orient", fuelType: "Diesel", ratePerDay: 22, ratePerKm: 5, busType: "City Transit", iswifiAvailable: true, isAccessibiltyServiceAvailable: false)
if (b5.isSelfDrive == false){
    b5.addDriver(drivers: d5, driverId: d5.id)
}
// Car objects
var c1 = Car(identificationNumber: "C01", description: "Sedan", isSelfDrive: false, manufacturerName: "Polo", isInsured: true, insuranceProviderName: "National", vehicleNoOfSeats: 4, fuelType: "Petrol", ratePerDay: 10, ratePerKm: 5, carColor: "White", carType: "Sedan")
if (c1.isSelfDrive == false){
    c1.addDriver(drivers: d1, driverId: d1.id)
}

var c2 = Car(identificationNumber: "C02", description: "SUV", isSelfDrive: true, manufacturerName: "Mahindra", isInsured: true, insuranceProviderName: "Thomas", vehicleNoOfSeats: 5, fuelType: "Petrol", ratePerDay: 12, ratePerKm: 3 , carColor: "Black", carType: "HatchBack")
if (c2.isSelfDrive == false){
    c2.addDriver(drivers: d2, driverId: d2.id)
}
var c3 = Car(identificationNumber: "C03", description: "Crossover", isSelfDrive: true, manufacturerName: "Nissan", isInsured: true, insuranceProviderName: "Car Insaurance", vehicleNoOfSeats: 7, fuelType: "Diesel", ratePerDay: 15, ratePerKm: 5, carColor: "White", carType: "CUV")
if (c3.isSelfDrive == false){
    c3.addDriver(drivers: d3, driverId: d3.id)
}
var c4 = Car(identificationNumber: "C04", description: "Convertible and Crossover", isSelfDrive: true, manufacturerName: "Lamborghini", isInsured: true, insuranceProviderName: "Convertible Insaurances", vehicleNoOfSeats: 2, fuelType: "Diesel", ratePerDay: 30, ratePerKm: 8, carColor: "Red", carType: "Convertible")
if (c4.isSelfDrive == false){
    c4.addDriver(drivers: d4, driverId: d4.id)
}
var c5 = Car(identificationNumber: "C05", description: "Mercedes Benz GLE Coupe", isSelfDrive: true, manufacturerName: "Mercedes", isInsured: true, insuranceProviderName: "National", vehicleNoOfSeats: 5, fuelType: "Diesel", ratePerDay: 30, ratePerKm: 5, carColor: "White", carType: "Passenger Car")
if (c5.isSelfDrive == false){
    c5.addDriver(drivers: d5, driverId: d5.id)
}
// MotorCycle objects
var mc1 = MotorCycle(identificationNumber: "MC01", description: "Classic",manufacturerName: "Bajaj", isSelfDrive: true, isInsured: true,  insuranceProviderName: "Overseas",vehicleNoOfSeats: 2,fuelType: "Petrol", ratePerDay: 5, ratePerKm: 5, maxTopSpeed: 60, milage: 25)
var mc2 = MotorCycle(identificationNumber: "MC02", description: "Thunderbird",manufacturerName: "Bullet",isSelfDrive: true,  isInsured: true, insuranceProviderName: "Nation", vehicleNoOfSeats: 2, fuelType: "Petrol", ratePerDay: 5, ratePerKm: 5, maxTopSpeed: 50, milage: 35)
var mc3 = MotorCycle(identificationNumber: "MC03", description: "Chronic", manufacturerName: "Yamaha", isSelfDrive: true, isInsured: true, insuranceProviderName: "Oriental", vehicleNoOfSeats: 2,  fuelType: "Petrol", ratePerDay: 5, ratePerKm: 5, maxTopSpeed: 40, milage: 40)
var mc4 = MotorCycle(identificationNumber: "MC04", description: "Chrome", manufacturerName: "Pulsar", isSelfDrive: true, isInsured: true, insuranceProviderName: "Hero", vehicleNoOfSeats: 2,  fuelType: "Petrol", ratePerDay: 5, ratePerKm: 5, maxTopSpeed: 70, milage: 25)
var mc5 = MotorCycle(identificationNumber: "MC05", description: "Classic", manufacturerName: "Honda", isSelfDrive: true, isInsured: true, insuranceProviderName: "Philo", vehicleNoOfSeats: 2,  fuelType: "Petrol", ratePerDay: 5, ratePerKm: 5, maxTopSpeed: 60, milage: 55)



var rent1 = VehicleRent(vehicleRentID: 1, rentStartDate: "01/01/20", rentEndDate: "06/01/20", numberOfKmDrived: 20)

rent1.addVehicle(vehicle: b1, identificationNumber: b1.identificationNumber)
rent1.display()

var rent2 = VehicleRent(vehicleRentID: 2, rentStartDate: "05/02/19", rentEndDate: "10/02/19", numberOfKmDrived: 40)

rent2.addVehicle(vehicle: c1, identificationNumber: c1.identificationNumber)
rent2.display()

//if(b1.isSelfDrive != true)
//{
//    b1.addDriver(drivers: d1, driverId: d1.id)
//}
//customer1.addVehicleRent(vehicleRent: rent1, vehicleIdentificationNumber: rent1.vehicleIdentificationNumber)


//rent2.addVehicle(vehicle: c1, identificationNumber: c1.identificationNumber)
//customer1.addVehicleRent(vehicleRent: rent2, vehicleIdentificationNumber: rent2.vehicleIdentificationNumber)

customer1.display()

// Decrypt the password
//print("EbMlRxcUH9TGJ3SxiEVzLA==".decrypt(key: "encrypt", iv: "encrypt") ?? "encrypt")


var owner1 = Owner(id: 1, firstName: "Nikita", lastName: "Sandhu", gender: .Female, birthDate: "13/10/1994", mobileNumber: "1234567890", email: "asdasf", userName: "sfasf", password: "safsdf".encrypt(key: "encrypt", iv: "encrypt") ?? "encrypt" , companyTitle: "tmall", businessLandLineNumber: "657498", website: "tmall.com")

var owner2 = Owner(id: 2, firstName: "Kamalpreet", lastName: "kaur", gender: .Female, birthDate: "20/02/1998", mobileNumber: "4573681257", email: "kamalKaur@gmail.com", userName: "kamalKaur", password: "kaur".encrypt(key: "encrypt", iv: "encrypt") ?? "encrypt", companyTitle: "nature", businessLandLineNumber: "112642", website: "nature.com")

var owner3 = Owner(id: 3, firstName: "Jyoti", lastName: "Thomas", gender: .Female, birthDate: "03/10/1990", mobileNumber: "4569872457", email: "Jthomas@yahoo.com", userName: "jyotiT", password: "thomas".encrypt(key: "encrypt", iv: "encrypt") ?? "encrypt", companyTitle: "twitterbeat", businessLandLineNumber: "235987", website: "macromedia.com")

var owner4 = Owner(id: 4, firstName: "Millind", lastName: "Gaba", gender: .Male, birthDate: "08/04/1992", mobileNumber: "3419871547", email: "millind67@gmail.com", userName: "Gmillind", password: "gaba".encrypt(key: "encrypt", iv: "encrypt") ?? "encrypt", companyTitle: "Rooxo", businessLandLineNumber: "123455", website: "tmall.com")

var owner5 = Owner(id: 5, firstName: "Charmi", lastName: "Patel", gender: .Female, birthDate: "03/11/1993", mobileNumber: "6584237485", email: "charmi12@outlook.com", userName: "charmiPatel", password: "patel".encrypt(key: "encrypt", iv: "encrypt") ??
    "encrypt", companyTitle: "Multimedia", businessLandLineNumber: "658494", website: "multimedia.com")



owner1.addVehicleOwned(vehicleOwned: c1, vehicleIdentificationNumber: c1.identificationNumber)
owner1.addVehicleOwned(vehicleOwned: b1, vehicleIdentificationNumber: b1.identificationNumber)
owner1.addVehicleOwned(vehicleOwned: c2, vehicleIdentificationNumber: c2.identificationNumber)

owner2.addVehicleOwned(vehicleOwned: mc1, vehicleIdentificationNumber: mc1.identificationNumber)
owner2.addVehicleOwned(vehicleOwned: b2, vehicleIdentificationNumber: b2.identificationNumber)
owner2.addVehicleOwned(vehicleOwned: c3, vehicleIdentificationNumber: c3.identificationNumber)

owner3.addVehicleOwned(vehicleOwned: c4, vehicleIdentificationNumber: c4.identificationNumber)
owner3.addVehicleOwned(vehicleOwned: c5, vehicleIdentificationNumber: c5.identificationNumber)

owner4.addVehicleOwned(vehicleOwned: b3, vehicleIdentificationNumber: b3.identificationNumber)
owner4.addVehicleOwned(vehicleOwned: b4, vehicleIdentificationNumber: b4.identificationNumber)
owner4.addVehicleOwned(vehicleOwned: b5, vehicleIdentificationNumber: b5.identificationNumber)

owner5.addVehicleOwned(vehicleOwned: mc2, vehicleIdentificationNumber: mc2.identificationNumber)
owner5.addVehicleOwned(vehicleOwned: mc3, vehicleIdentificationNumber: mc3.identificationNumber)
owner5.addVehicleOwned(vehicleOwned: mc4, vehicleIdentificationNumber: mc4.identificationNumber)
owner5.addVehicleOwned(vehicleOwned: mc5, vehicleIdentificationNumber: mc5.identificationNumber)




owner1.display()

customer1.addVehicleRent(vehicleRent: rent1, vehicleRentID: rent1.vehicleRentID)
customer1.display()
