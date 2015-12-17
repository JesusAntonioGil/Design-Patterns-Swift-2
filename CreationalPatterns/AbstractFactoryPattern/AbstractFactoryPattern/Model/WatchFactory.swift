//
//  WatchFactory.swift
//  AbstractFactoryPattern
//
//  Created by Jesus Antonio Gil on 17/12/15.
//  Copyright © 2015 Jesus Antonio Gil. All rights reserved.
//

import UIKit


class WatchFactory: NSObject {

    //MARK: PUBLIC
    
    func createBand(bandType: BandType) -> iWatchBand
    {
        fatalError("not implemented")
    }
    
    func createDial(materialType: MaterialType) -> iWatchDial
    {
        fatalError("not implemented")
    }
    
    final class func getFactory(size: WatchSize) -> WatchFactory
    {
        var factory: WatchFactory?
        
        switch(size)
        {
            case ._38mm:
                factory = Watch38mmFactory()
            case ._42mm:
                factory = Watch42mmFactory()
        }
        
        return factory!
    }
}
