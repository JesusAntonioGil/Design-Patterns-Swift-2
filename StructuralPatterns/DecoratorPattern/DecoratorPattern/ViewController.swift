//
//  ViewController.swift
//  DecoratorPattern
//
//  Created by Jesus Antonio Gil on 17/12/15.
//  Copyright © 2015 Jesus Antonio Gil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let rectangle = Rectangle()
        let square = Square()
        
        let roundedRectangle = RoundedCornerShapeDecorator(decoratedShape: Rectangle())
        let roundedSquare = RoundedCornerShapeDecorator(decoratedShape: Square())
        
        print("rectangle with normal angles")
        print(rectangle.draw())
        print("square with normal angles")
        print(square.draw())
        
        print("rectangle with rounded angles")
        print(roundedRectangle.draw())
        print("square with rounded angles")
        print(roundedSquare.draw())
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }


}

