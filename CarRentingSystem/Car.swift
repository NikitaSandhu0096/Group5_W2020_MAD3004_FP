class Car: Vehicle
{
    var identificationNumber: String
    var description: String
    var manufacturerName: String
    var isSelfDrive: Bool
    var isInsured: Bool
    var vehicleNoOfSeats: Int
    var insuranceProviderName: String
    var fuelType: String
    var ratePerDay: Double
    var ratePerKm: Double
    var driver = [Int: Driver]()
    
    var carColor: String
    var carType: String
    
    init(identificationNumber:String,description:String,isSelfDrive:Bool,
         manufacturerName: String,isInsured: Bool,vehicleNoOfSeats:Int,insuranceProviderName: String,fuelType: String,ratePerDay: Double,ratePerKm: Double, carColor: String, carType: String)
    {
       self.identificationNumber = identificationNumber
       self.description = description
       self.isSelfDrive = isSelfDrive
       self.manufacturerName = manufacturerName
       self.isInsured = isInsured
       self.vehicleNoOfSeats = vehicleNoOfSeats
       self.insuranceProviderName = insuranceProviderName
       self.fuelType = fuelType
       self.ratePerDay = ratePerDay
       self.ratePerKm = ratePerKm
       self.carColor = carColor
       self.carType = carType
    
      }
    func addDriver(drivers: Driver, driverId: Int)
    {
        driver.updateValue(drivers, forKey: driverId)
    }
    
    func removeDriver(driverId: Int)
    {
        driver.removeValue(forKey: driverId)
    }
        
    
    
     func display() {
        print("------CAR------")
        print("Car IdentificationNumber:        \(identificationNumber)")
        print("Car Description:                 \(description)")
        print("Car ManufacturerName:            \(manufacturerName)")
        print("Car IsSelfDrive:                 \(isSelfDrive)")
        print("Car IsInsured:                   \(isInsured)")
        print("Car InsuranceProviderName:       \(insuranceProviderName)")
        print("Car VehicleNoOfSeats:            \(vehicleNoOfSeats)")
        print("Car FuelType:                    \(fuelType)")
        print("Car RatePerKm:                   \(ratePerKm.currency())")
        print("Car ratePerDay:                  \(ratePerDay.currency())")
        print("Car Color:                       \(carColor)")
        print("Car Type:                        \(carType)")
        if driver.count == 0{
            print("This vehicle doesn't have a driver")
        } else{
            for i in driver{
                i.value.display()
                print("------------------------------------")
            }
        }
    }
}
