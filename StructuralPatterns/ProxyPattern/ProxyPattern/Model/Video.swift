//
//  Video.swift
//  ProxyPattern
//
//  Created by Jesus Antonio Gil on 17/12/15.
//  Copyright © 2015 Jesus Antonio Gil. All rights reserved.
//

import UIKit

class Video: IAnimation {

    
    //MARK: PUBLIC
    
    func load() -> String
    {
        return "Loading video"
    }
    
    func play() -> String
    {
        return "Playing video"
    }
    
    //IAnimation Protocol
    
    func display() -> String
    {
        return "Display video"
    }
    
    func click() -> String
    {
        return ""
    }
}
