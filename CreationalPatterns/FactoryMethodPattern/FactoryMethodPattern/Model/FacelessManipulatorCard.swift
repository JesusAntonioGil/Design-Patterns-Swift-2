//
//  FacelessManipulatorCard.swift
//  FactoryMethodPattern
//
//  Created by Jesus Antonio Gil on 17/12/15.
//  Copyright © 2015 Jesus Antonio Gil. All rights reserved.
//

import UIKit


class FacelessManipulatorCard: AbstractCard {

    
    override init()
    {
        super.init()
        
        self.name = "Faceless Manipulator"
        self.mana = 5
        self.attack = 3
        self.defense = 3
    }
}
