//
//  SamSingAdapter.swift
//  AdapterPattern
//
//  Created by Jesus Antonio Gil on 2/1/16.
//  Copyright © 2016 Jesus Antonio Gil. All rights reserved.
//

import UIKit


class SamSingAdapter: ChargeableProtocol {

    var samSingPhone: SamSingMobilePhone!
    
    
    init(phone: SamSingMobilePhone)
    {
        samSingPhone = phone
    }
    
    func charge(volts: Double)
    {
        do
        {
            print("Adapter started")
            _ = try samSingPhone.chargeBattery(volts)
            print("Adapter ended")
        }
        catch SamSingMobilePhone.VoltageError.TooHigh
        {
            print("Voltage is to high")
        }
        catch SamSingMobilePhone.VoltageError.TooLow
        {
            print("Voltage is to low")
        }
        catch
        {
            print("An error occured")
        }
    }
}
