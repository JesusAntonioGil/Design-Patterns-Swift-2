//
//  Square.swift
//  DecoratorPattern
//
//  Created by Jesus Antonio Gil on 17/12/15.
//  Copyright © 2015 Jesus Antonio Gil. All rights reserved.
//

import UIKit


class Square: IShape {

    //IShape Protocol
    
    func draw() -> String
    {
        return "drawing Shape: Square"
    }
}
