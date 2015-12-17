//
//  CardFactory.swift
//  FactoryMethodPattern
//
//  Created by Jesus Antonio Gil on 17/12/15.
//  Copyright © 2015 Jesus Antonio Gil. All rights reserved.
//

import UIKit


enum CardType
{
    case FacelessManipulator, RaidLeader
}


class CardFactory: NSObject {

    //MARK: PUBLIC
    
    class func createCard(cardType:CardType) -> Card?
    {
        switch cardType
        {
            case .FacelessManipulator:
                return FacelessManipulatorCard()
            case .RaidLeader:
                return RaidLeaderCard()
        }
    }
}
