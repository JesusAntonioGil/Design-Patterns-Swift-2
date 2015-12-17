//
//  RaidLeaderCard.swift
//  FactoryMethodPattern
//
//  Created by Jesus Antonio Gil on 17/12/15.
//  Copyright © 2015 Jesus Antonio Gil. All rights reserved.
//

import UIKit


class RaidLeaderCard: AbstractCard {

    
    override init()
    {
        super.init()
        
        self.name = "Raid Leader"
        self.mana = 3
        self.attack = 2
        self.defense = 2
    }
}
