//
//  Charger.swift
//  AdapterPattern
//
//  Created by Jesus Antonio Gil on 2/1/16.
//  Copyright © 2016 Jesus Antonio Gil. All rights reserved.
//

import UIKit


class Charger: NSObject {

    var phone: ChargeableProtocol!
    let volts = 10.0
    
    
    func plugMobilePhone(phone: ChargeableProtocol)
    {
        print("A mobile is plugged")
        self.phone = phone
        self.phone.charge(volts)
    }
    
}
