//
//  AbstractPerfTest.swift
//  FlyweightPattern
//
//  Created by Jesus Antonio Gil on 21/12/15.
//  Copyright © 2015 Jesus Antonio Gil. All rights reserved.
//

import UIKit
import SpriteKit


class AbstractPerfTest {

    let colors: [SKColor] = [
        SKColor.yellowColor(),
        SKColor.blackColor(),
        SKColor.cyanColor(),
        SKColor.whiteColor(),
        SKColor.blueColor(),
        SKColor.brownColor(),
        SKColor.redColor(),
        SKColor.greenColor(),
        SKColor.grayColor(),
        SKColor.purpleColor()
    ]
    
    let sks = SKScene()
    let view = SKView(frame: CGRect(x: 0, y: 0, width: 1024, height: 768))
    
    let maxRectWidth = 100
    let maxRectHeight = 100
    
    
    func run()
    {
        preconditionFailure("Must be overrriden")
    }
    
    //MARK: Generate Rect Height and Width
    
    func generateRectWidth() -> Int
    {
        return Int(arc4random_uniform(UInt32(maxRectWidth)))
    }
    
    func generateRectHeight() -> Int
    {
        return Int(arc4random_uniform(UInt32(maxRectHeight)))
    }
    
    //MARK: Generate Position X and Y
    
    func generateXPos() -> Int
    {
        return Int(arc4random_uniform(UInt32(view.bounds.size.width)))
    }
    
    func generateYPos() -> Int
    {
        return Int(arc4random_uniform(UInt32(view.bounds.size.height)))
    }
}
