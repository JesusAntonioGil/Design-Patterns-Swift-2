//
//  Watch38mmFactory.swift
//  AbstractFactoryPattern
//
//  Created by Jesus Antonio Gil on 17/12/15.
//  Copyright © 2015 Jesus Antonio Gil. All rights reserved.
//

import UIKit


class Watch38mmFactory: WatchFactory {
    
    
    override func createBand(bandType: BandType) -> iWatchBand
    {
        switch bandType
        {
        case .Milanese:
            return MilaneseBand(size: .SM)
        case .Classic:
            return ClassicBand(size: .SM)
        case .Leather:
            return LeatherBand(size: .SM)
        case .Modern:
            return ModernBand(size: .SM)
        case .LinkBracelet:
            return LinkBraceletBand(size: .SM)
        case .SportBand:
            return SportBand(size: .SM)
        }
    }
    
    override func createDial(materialType: MaterialType) -> iWatchDial
    {
        switch materialType
        {
        case .Aluminium:
            return AluminiumDial(size: ._38mm)
        case .Gold:
            return GoldDial(size: ._38mm)
        case .StainlessSteel:
            return StainlessSteelDial(size: ._38mm)
        }
    }
}
