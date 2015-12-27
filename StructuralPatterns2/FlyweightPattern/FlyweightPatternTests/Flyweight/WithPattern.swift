//
//  WithPattern.swift
//  FlyweightPattern
//
//  Created by Jesus Antonio Gil on 27/12/15.
//  Copyright © 2015 Jesus Antonio Gil. All rights reserved.
//

import UIKit


class WithPattern: AbstractPerfTest {

    
    //Execute the test
    
    override func run()
    {
        var j:Int = 0
        
        for _ in 1...100000
        {
            let idx = Int(arc4random_uniform(UInt32(self.colors.count - 1)))
            let rect = FlyweightRectFactory.getFlyweightRect(self.colors[idx])
            
            rect.display(generateXPos(), yPos: generateYPos(), width: generateRectWidth(), height: generateRectHeight())
            
            j++
        }
        
        print("\(j) rects generated")
        //print("nb Map: \(FlyweightRectFactory.rectsMap.count)")
    }
}
