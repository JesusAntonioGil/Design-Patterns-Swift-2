//
//  RemoteControl.swift
//  BridgePattern
//
//  Created by Jesus Antonio Gil on 17/12/15.
//  Copyright © 2015 Jesus Antonio Gil. All rights reserved.
//

import UIKit


class RemoteControl: IAbstractBridge {

    var concreteImpl: ImplementationBase
    
    
    init(impl: ImplementationBase)
    {
        self.concreteImpl = impl
    }
    
    //IAbstractBridge protocol
    
    func turnOn()
    {
        self.concreteImpl.run()
    }
}
