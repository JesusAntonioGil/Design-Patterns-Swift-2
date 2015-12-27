//
//  VODItem.swift
//  CompositePattern
//
//  Created by Jesus Antonio Gil on 18/12/15.
//  Copyright © 2015 Jesus Antonio Gil. All rights reserved.
//

import UIKit


class VODItem: VODComponent {

    private var name: String!
    private var descriptionItem: String!
    private var price: Double!
    
    
    init(name:String!, descriptionItem:String!, price:Double!)
    {
        self.name = name
        self.descriptionItem = descriptionItem
        self.price = price
    }
    
    //MARK: PUBLIC
    
    override func getName() -> String
    {
        return name
    }
    
    override func getDescription() -> String
    {
        return descriptionItem
    }
    
    override func getPrice() -> Double
    {
        return price
    }
    
    override func display()
    {
        print("\(name), \(price), ---- \(descriptionItem)")
    }
}
