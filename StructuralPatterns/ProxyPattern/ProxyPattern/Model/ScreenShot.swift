//
//  ScreenShot.swift
//  ProxyPattern
//
//  Created by Jesus Antonio Gil on 17/12/15.
//  Copyright © 2015 Jesus Antonio Gil. All rights reserved.
//

import UIKit


class ScreenShot: IAnimation {

    var video: Video?
    
    //IAnimation protocol
    
    func display() -> String
    {
        if let video = video
        {
            return video.display()
        }
        else
        {
            return "Display the screenshot of the video"
        }
    }
    
    func click() -> String
    {
        if let video = video
        {
            return video.play()
        }
        else
        {
            video = Video()
            return video!.load()
        }
    }
}
