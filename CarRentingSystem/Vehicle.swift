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
    var fuelType: String { get set }
    var ratePerDay: Double { get set }
    var ratePerKm: Double { get set}
    //var driver;
      
    func display()
}

