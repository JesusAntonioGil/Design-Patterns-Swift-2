//
//  VODManager.swift
//  CompositePattern
//
//  Created by Jesus Antonio Gil on 18/12/15.
//  Copyright © 2015 Jesus Antonio Gil. All rights reserved.
//

import UIKit


class VODManager: NSObject {
    
    var catalog: VODComponent
    
    
    init(vod: VODComponent)
    {
        catalog = vod
    }
    
    //MARK: PUBLIC
    
    func displayCatalog()
    {
        catalog.display()
    }

}
