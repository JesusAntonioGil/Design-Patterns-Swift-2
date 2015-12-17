//
//  RoundedCornerShapeDecorator.swift
//  DecoratorPattern
//
//  Created by Jesus Antonio Gil on 17/12/15.
//  Copyright © 2015 Jesus Antonio Gil. All rights reserved.
//

import UIKit


class RoundedCornerShapeDecorator: ShapeDecorator {

    required init(decoratedShape: IShape)
    {
        super.init(decoratedShape: decoratedShape)
    }
    
    //PUBLIC
    
    func setRoundedCornerShape(decoratedShape: IShape) -> String
    {
        return "Corners are rounded"
    }
    
    //IShape Protocol
    
    override func draw() -> String
    {
        //We concatenate our shape properties
        return decoratedShape.draw() + "," + setRoundedCornerShape(decoratedShape)
    }
}
