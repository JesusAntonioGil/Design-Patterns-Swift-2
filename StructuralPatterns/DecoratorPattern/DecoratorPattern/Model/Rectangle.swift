//
//  Rectangle.swift
//  DecoratorPattern
//
//  Created by Jesus Antonio Gil on 17/12/15.
//  Copyright © 2015 Jesus Antonio Gil. All rights reserved.
//

import UIKit


class Rectangle: IShape {
    
    //IShape Protocol
    
    func draw() -> String
    {
        return "drawing Shape: Rectangle"
    }

}
