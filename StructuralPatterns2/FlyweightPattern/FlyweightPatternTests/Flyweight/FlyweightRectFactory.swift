//
//  FlyweightRectFactory.swift
//  FlyweightPattern
//
//  Created by Jesus Antonio Gil on 27/12/15.
//  Copyright © 2015 Jesus Antonio Gil. All rights reserved.
//

import UIKit
import SpriteKit
import Foundation



class FlyweightRectFactory {

    internal static var rectsMap = Dictionary<SKColor, FlyweightRect>()
    internal static var rectsMapNS = NSMutableDictionary()
    internal static var rectsMapNSc = NSCache()
    
    
    static func getFlyweightRect(color:SKColor) -> FlyweightRect
    {
        if let result = rectsMap[color]
        {
            return result
        }
        else   //if nil add it to our dictionary
        {
            let result = FlyweightRect(color: color)
            rectsMap[color] = result
            
            return result
        }
    }
    
    static func getFlyweightRectWithNS(color:SKColor) -> FlyweightRect
    {
        let result = rectsMapNS[color.description]
        
        if (result == nil)
        {
            let flyweight = FlyweightRect(color: color)
            rectsMapNS.setObject(flyweight, forKey: color.description)
            
            return flyweight as FlyweightRect
        }
        else
        {
            return result as! FlyweightRect
        }
    }
    
    static func getFlyweightRectWithNSc(color:SKColor) -> FlyweightRect
    {
        let result = rectsMapNSc.objectForKey(color.description)
        
        if (result == nil)
        {
            let flyweight = FlyweightRect(color: color)
            rectsMapNSc.setObject(flyweight, forKey: color.description)
            
            return flyweight as FlyweightRect
        }
        else
        {
            return result as! FlyweightRect
        }
    }
}
