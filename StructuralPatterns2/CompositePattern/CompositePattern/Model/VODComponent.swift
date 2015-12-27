//
//  VODComponent.swift
//  CompositePattern
//
//  Created by Jesus Antonio Gil on 18/12/15.
//  Copyright © 2015 Jesus Antonio Gil. All rights reserved.
//

import UIKit


class VODComponent: Equatable  {

    //MARK: PUBLIC
    
    func add(vodComponent: VODComponent)
    {
        assert(false, "This method is not supported")
    }
    
    func remove(vodComponent: VODComponent)
    {
        assert(false, "This method is not supported")
    }
    
    func getName() -> String
    {
        assert(false, "This method is not supported")
    }
    
    func getDescription() -> String
    {
        assert(false, "This method is not supported")
    }
    
    func getPrice() -> Double
    {
        assert(false, "This method is not supported")
    }
    
    func getChild(i: Int) -> VODComponent
    {
        assert(false, "This method is not supported")
    }
    
    func display()
    {
        assert(false, "This method is not suported")
    }
}

//MARK: Global func
//MARK: Equatable protocol

func ==(lhs: VODComponent, rhs: VODComponent) -> Bool
{
    return lhs === rhs
}
