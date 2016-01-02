//
//  SamSingMobilePhone.swift
//  AdapterPattern
//
//  Created by Jesus Antonio Gil on 2/1/16.
//  Copyright © 2016 Jesus Antonio Gil. All rights reserved.
//

import UIKit


class SamSingMobilePhone: NSObject {
    
    enum VoltageError: ErrorType
    {
        case TooHigh
        case TooLow
    }
    
    //Accept only 10 volts
    func chargeBattery(volts: Double) throws
    {
        if volts > 10 { throw VoltageError.TooHigh }
        if volts < 10 { throw VoltageError.TooLow }
        
        print("SamSing mobile phone is charging")
        print("Current voltage \(volts)")
    }

}
