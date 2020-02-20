//
//  Extensions.swift
//  CarRentingSystem
//
//  Created by Nikita Sandhu on 2020-02-19.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

extension String{
    func emailValid() -> Bool{      //https://stackoverflow.com/questions/27998409/email-phone-validation-in-swift
        let emailRegEx = "[A-Z0-9a-z.%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self)
    }
    
    func mobileValid() -> Bool{         //https://stackoverflow.com/questions/27998409/email-phone-validation-in-swift
        let mobileNumberRegEx = "[0-9]{10}"
        let mobileTest = NSPredicate(format: "SELF MATCHES %@", mobileNumberRegEx)
        return mobileTest.evaluate(with: self)
    }
    
    func toDate(withFormat format: String = "yyyy-MM-dd") -> Date                                       //https://medium.com/@lugearma/converting-date-string-to-date-type-with-swift-8b6b2f07d50
    {
      let dateFormatter = DateFormatter()
      dateFormatter.dateFormat = format
      guard let date = dateFormatter.date(from: self) else {
        preconditionFailure("not valid date")
      }
      return date
    }
}

extension Double
{
    // adding $ symbol with rent calculated
    func currency() -> String
    {
        let s = String.init(format: "$%.2f", self)
        return s
    }
}
