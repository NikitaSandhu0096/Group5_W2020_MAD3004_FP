//
//  VehicleRent.swift
//  CarRentingSystem
//
//  Created by MacStudent on 2020-02-19.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

import Foundation

class VehicleRent: IDisplay
{

    var vehicles = [String: Vehicle]()
    var vehicleIdentificationNumber: String
    var rentStartDate: Date
    var rentEndDate: Date
    var totalDays: Int
    {
        var diffInDays = 0
        diffInDays = Calendar.current.dateComponents([.day], from: rentStartDate, to: rentEndDate).day ?? 0         //https://stackoverflow.com/questions/40075850/swift-3-find-number-of-calendar-days-between-two-dates
        return diffInDays
    }
    var rentInNoOfDays: Float
    {
        let totalRent = totalDays * 10
        return Float(totalRent)
        
    }
    var noOfKmDrived: Double
    var totalBillToPay: Double = 0.0
    init(vehicleIdentificationNumber: String, rentStartDate: Date, rentEndDate: Date, noOfKmDrived: Double)
    {
        self.vehicleIdentificationNumber = vehicleIdentificationNumber
        self.rentStartDate = rentStartDate
        self.rentEndDate = rentEndDate
        self.noOfKmDrived = noOfKmDrived
    }
    
    func calculateTotalBill() {
        for v in vehicles
        {
            totalBillToPay = Double(rentInNoOfDays) + v.value.ratePerDay
        }
        
    }
    func addVehicle(vehicle: Vehicle, identificationNumber: String)
    {
        vehicles.updateValue(vehicle, forKey: identificationNumber)
    }
    
    func removeVehicle(identificationNumber: String)
    {
        vehicles.removeValue(forKey: identificationNumber)
    }
    
    
    
    func display() {
        
        print("********************Vehicle Rent*******************************")
        //print("Vehicle Rent in No of Days:          \(rentInNoOfDays)")
        for v in vehicles
            {
                v.value.display()
            }
             if vehicles.count == 0
            {
                print("This person has no vehicles rented")
            }
            else
            {
                calculateTotalBill()
        print("\t \t Rent to Pay : \(totalBillToPay)")
            }
        }
        
    }

