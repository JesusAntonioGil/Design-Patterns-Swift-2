//
//  FlyweightRect.swift
//  FlyweightPattern
//
//  Created by Jesus Antonio Gil on 27/12/15.
//  Copyright © 2015 Jesus Antonio Gil. All rights reserved.
//

import UIKit
import Foundation
import SpriteKit


class FlyweightRect {

    var color: SKColor!
    var xPos: Int?
    var yPos: Int?
    var width: Int?
    var height: Int?
    var image: UIImage?
    var sprite: SKSpriteNode?
    
    
    //the constructor contains our intrinsic state
    init(color: SKColor)
    {
        self.color = color
        self.image = UIImage()
        self.sprite = SKSpriteNode()
    }
    
    func display(xPos:Int, yPos:Int, width:Int, height:Int)
    {
        self.xPos = xPos
        self.yPos = yPos
        self.width = width
        self.height = height
    }
    
    func description() -> String
    {
        return "rect position: \(self.xPos), \(self.yPos) : dimension: \(self.width), \(self.height) : color: \(self.color)"
    }
}
