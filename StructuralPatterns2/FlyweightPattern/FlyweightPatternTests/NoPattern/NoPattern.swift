//
//  NoPattern.swift
//  FlyweightPattern
//
//  Created by Jesus Antonio Gil on 21/12/15.
//  Copyright © 2015 Jesus Antonio Gil. All rights reserved.
//

import UIKit
import SpriteKit


struct NoPatternConstants
{
    static let NUMBER_TO_GENERATE = 100000
}


class NoPattern: AbstractPerfTest {

    //MARK: Execute the test
    
    override func run()
    {
        var j: Int = 0
        
        for _ in 1...100000
        {
            let idx = Int(arc4random_uniform(UInt32(self.colors.count - 1)))
            
            let rect = SimpleRect(color: colors[idx])
            rect.display(generateXPos(), yPos: generateYPos(), width: generateRectWidth(), height: generateRectHeight())
            
            j++
        }
        
        print("\(j) rects generated")
    }
}
