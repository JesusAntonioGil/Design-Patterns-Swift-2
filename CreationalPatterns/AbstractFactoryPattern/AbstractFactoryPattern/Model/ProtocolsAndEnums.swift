//
//  ProtocolsAndEnums.swift
//  AbstractFactoryPattern
//
//  Created by Jesus Antonio Gil on 17/12/15.
//  Copyright © 2015 Jesus Antonio Gil. All rights reserved.
//

import UIKit


//MARK: ENUMS

enum MaterialType: String
{
    case
        Aluminium = "Aluminium",
        StainlessSteel = "Stainless Steel",
        Gold = "Gold"
}

enum BandType: String
{
    case
        Milanese = "Milanese",
        Classic = "Classic",
        Leather = "Leather",
        Modern = "Modern",
        LinkBracelet = "LinkBracelet",
        SportBand = "SportBand"
}

enum WatchSize: String
{
    case
        _38mm = "38mm",
        _42mm = "42mm"
}

enum BandSize: String
{
    case
        SM = "SM",
        ML = "ML"
}


//MARK: PROTOCOLS

protocol iWatchBand
{
    var color: UIColor  {get set}
    var size: BandSize  {get set}
    var type: BandType  {get set}
    
    init(size:BandSize)
}

protocol iWatchDial
{
    var material: MaterialType  {get set}
    var size: WatchSize  {get set}
    
    init (size:WatchSize)
}







