//
//  PearMobilePhone.swift
//  AdapterPattern
//
//  Created by Jesus Antonio Gil on 2/1/16.
//  Copyright © 2016 Jesus Antonio Gil. All rights reserved.
//

import UIKit


class PearMobilePhone: NSObject {

    enum PearVoltageError: ErrorType
    {
        case NoPower
        case TooLow
        case TooHigh
    }
    
    //Accept only 5.5 volts
    func charge(volts: Double) throws
    {
        guard volts > 0 else { throw PearVoltageError.NoPower }
        if volts > 5.5 { throw PearVoltageError.TooHigh }
        if volts < 5.5 { throw PearVoltageError.TooLow }
        
        print("Pear mobile phone is charging")
        print("Current voltage \(volts)")
    }
}
