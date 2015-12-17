//
//  ShapeDecorator.swift
//  DecoratorPattern
//
//  Created by Jesus Antonio Gil on 17/12/15.
//  Copyright © 2015 Jesus Antonio Gil. All rights reserved.
//

import UIKit


class ShapeDecorator: IShape {

    let decoratedShape: IShape
    
    
    required init(decoratedShape: IShape)
    {
        self.decoratedShape = decoratedShape
    }
    
    //IShape Protocol
    
    func draw() -> String
    {
        fatalError("Not implemented")
    }
}
