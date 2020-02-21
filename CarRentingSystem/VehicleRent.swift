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
    var rentStartDate: String
    var rentEndDate: String
    var rentInNumberOfDays : Float = 0.0
    var vehicles = [String: Vehicle]()
    var numberOfKmDrived : Int
    var rentInKm : Float = 0.0
    var totalBillToPay : Float = 0.0
//    var vehicleIdentificationNumber: String
    
    init(rentStartDate : String, rentEndDate : String, numberOfKmDrived : Int) {
        self.rentStartDate = rentStartDate
        self.rentEndDate = rentEndDate
        self.numberOfKmDrived = numberOfKmDrived
    }
    
    func startingDate(string : String) -> Date {    //https://stackoverflow.com/questions/35700281/date-format-in-swift
        let dateformatGet1 = DateFormatter()
        dateformatGet1.dateFormat = "dd/MM/yyyy"
    
        let startDate1 : Date? = dateformatGet1.date(from: rentStartDate)
        return startDate1!
    }
    
    func endingDate(string : String) -> Date {      //https://stackoverflow.com/questions/35700281/date-format-in-swift
        
     let dateformatGet2 = DateFormatter()
     dateformatGet2.dateFormat = "dd/MM/yyyy"
     
     let endDate1 : Date? = dateformatGet2.date(from: rentEndDate)
     return endDate1!
    }
    
    func totalDays() -> Int{            //https://stackoverflow.com/questions/24723431/swift-days-between-two-nsdates
        let current = Calendar.current
        let numberOfDays = current.dateComponents([Calendar.Component.day], from: startingDate(string: rentStartDate), to: endingDate(string: rentEndDate))
        return numberOfDays.day!
    }
    
    func addVehicle(vehicle: Vehicle, identificationNumber: String)
    {
        vehicles.updateValue(vehicle, forKey: identificationNumber)
    }
    
    func removeVehicle(identificationNumber: String)
    {
        vehicles.removeValue(forKey: identificationNumber)
    }
    
    func rentForDays() -> Float{
        for i in vehicles{
            rentInNumberOfDays = i.value.ratePerDay * Float(totalDays())
        }
        return rentInNumberOfDays
    }
    
    func rentForKm() -> Float{
        for i in vehicles{
            rentInKm = i.value.ratePerKm * Float(numberOfKmDrived)
        }
        return rentInKm
    }
    
    func calculateTotalBill() -> Float{
        totalBillToPay = rentInNumberOfDays + rentInKm
        return totalBillToPay
    }
    
    func display() {
        print("------VEHICLE RENT------")
        print("Rent Start Date : \(self.rentStartDate)")
        print("Rent End Date : \(self.rentEndDate)")
        print("Rent in number of days : \(rentForDays())")
        print("Number of KM Drived : \(self.numberOfKmDrived)")
        print("Rent in number of KM : \(rentForDays())")
        print("Total rent to pay : \(calculateTotalBill())")
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

