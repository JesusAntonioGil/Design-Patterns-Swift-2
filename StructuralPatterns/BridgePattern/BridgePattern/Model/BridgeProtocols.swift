//
//  BridgeProtocols.swift
//  BridgePattern
//
//  Created by Jesus Antonio Gil on 17/12/15.
//  Copyright © 2015 Jesus Antonio Gil. All rights reserved.
//

import UIKit


//Bridge
protocol ImplementationBase
{
    func run()
}

//IAbstractBridge
protocol IAbstractBridge
{
    var concreteImpl: ImplementationBase  {get set}
    
    func turnOn()
}