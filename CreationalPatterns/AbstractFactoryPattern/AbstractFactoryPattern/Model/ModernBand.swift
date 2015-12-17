//
//  ModernBand.swift
//  AbstractFactoryPattern
//
//  Created by Jesus Antonio Gil on 17/12/15.
//  Copyright © 2015 Jesus Antonio Gil. All rights reserved.
//

import UIKit


class ModernBand: iWatchBand {

    var color = UIColor.yellowColor()
    var size: BandSize
    var type = BandType.Modern
    
    
    required init(size _size: BandSize)
    {
        size = _size
    }
}
