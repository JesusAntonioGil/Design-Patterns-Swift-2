//
//  SimpleRect.swift
//  FlyweightPattern
//
//  Created by Jesus Antonio Gil on 21/12/15.
//  Copyright © 2015 Jesus Antonio Gil. All rights reserved.
//

import UIKit
import SpriteKit


class SimpleRect: NSObject {

    var color: SKColor
    var xPos: Int?
    var yPos: Int?
    var width: Int?
    var height: Int?
    
    
    init(color:SKColor)
    {
        self.color = color
    }
    
    //MARK: PUBLIC
    
    func display(xPos:Int, yPos:Int, width:Int, height:Int)
    {
        self.xPos = xPos
        self.yPos = yPos
        self.width = width
        self.height = height
    }
}
