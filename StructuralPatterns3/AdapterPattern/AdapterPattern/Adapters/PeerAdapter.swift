//
//  PeerAdapter.swift
//  AdapterPattern
//
//  Created by Jesus Antonio Gil on 2/1/16.
//  Copyright © 2016 Jesus Antonio Gil. All rights reserved.
//

import UIKit


class PeerAdapter: ChargeableProtocol {

    var pearMobilePhone: PearMobilePhone
    
    
    init(phone: PearMobilePhone)
    {
        pearMobilePhone = phone
    }
    
    func charge(volts: Double)
    {
        do
        {
            print("Adapter started")
            _ = try pearMobilePhone.charge(5.5)
            print("Adapter ended")
        }
        catch PearMobilePhone.PearVoltageError.TooHigh
        {
            print("Voltage is too high")
        }
        catch PearMobilePhone.PearVoltageError.TooLow
        {
            print("Voltage is too low")
        }
        catch
        {
            print("An error occured")
        }
    }
}


