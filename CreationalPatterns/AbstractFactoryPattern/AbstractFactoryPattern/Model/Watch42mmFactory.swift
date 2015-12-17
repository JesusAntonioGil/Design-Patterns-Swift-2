//
//  Watch42mmFactory.swift
//  AbstractFactoryPattern
//
//  Created by Jesus Antonio Gil on 17/12/15.
//  Copyright © 2015 Jesus Antonio Gil. All rights reserved.
//

import UIKit


class Watch42mmFactory: WatchFactory {

    
    override func createBand(bandType: BandType) -> iWatchBand
    {
        switch bandType
        {
            case .Milanese:
                return MilaneseBand(size: .ML)
            case .Classic:
                return ClassicBand(size: .ML)
            case .Leather:
                return LeatherBand(size: .ML)
            case .Modern:
                return ModernBand(size: .ML)
            case .LinkBracelet:
                return LinkBraceletBand(size: .ML)
            case .SportBand:
                return SportBand(size: .ML)
        }
    }
    
    override func createDial(materialType: MaterialType) -> iWatchDial
    {
        switch materialType
        {
            case .Aluminium:
                return AluminiumDial(size: ._42mm)
            case .Gold:
                return GoldDial(size: ._42mm)
            case .StainlessSteel:
                return StainlessSteelDial(size: ._42mm)
        }
    }
}
