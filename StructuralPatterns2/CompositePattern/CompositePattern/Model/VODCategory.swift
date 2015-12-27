//
//  VODCategory.swift
//  CompositePattern
//
//  Created by Jesus Antonio Gil on 18/12/15.
//  Copyright © 2015 Jesus Antonio Gil. All rights reserved.
//

import UIKit


class VODCategory: VODComponent {

    var vodComponents = [VODComponent]()
    
    private var name: String!
    private var descriptionCategory: String!
    
    
    init(name:String!, descriptionCategory:String!)
    {
        self.name = name
        self.descriptionCategory = descriptionCategory
    }
    
    //MARK: PUBLIC
    
    override func add(vodComponent: VODComponent)
    {
        vodComponents.append(vodComponent)
    }
    
    override func remove(vodComponent: VODComponent)
    {
        vodComponents.remove(vodComponent)
    }
    
    override func getChild(i: Int) -> VODComponent
    {
        return vodComponents[i]
    }
    
    override func getName() -> String
    {
        return name
    }
    
    override func getDescription() -> String
    {
        return descriptionCategory
    }
    
    override func display()
    {
        print("\(name), \(descriptionCategory) \r\n ------------")
        
        for e in vodComponents
        {
            e.display()
        }
    }
}
