//
//  Array.swift
//  CompositePattern
//
//  Created by Jesus Antonio Gil on 18/12/15.
//  Copyright © 2015 Jesus Antonio Gil. All rights reserved.
//

import UIKit


extension Array {

    mutating func remove <T: Equatable> (object: T)
    {
        for i in (self.count - 1).stride(through: 0, by: -1)
        {
            if let element = self[i] as? T
            {
                if element == object
                {
                    self.removeAtIndex(i)
                }
            }
        }
    }
    
}
