//
//  PhonePrototype.swift
//  AdapterPattern
//
//  Created by Jesus Antonio Gil on 2/1/16.
//  Copyright © 2016 Jesus Antonio Gil. All rights reserved.
//

import UIKit


class PhonePrototype: NSObject, ChargeableProtocol {

    //This function is called to charge a mobile phone.
    //Usage: charge(5.5)
    //Parameter volts: voltage needed to charge the battery
    
    func charge(volts: Double)
    {
        print("Charging our PhonePrototype")
        print("Current voltage \(volts)")
    }
}
