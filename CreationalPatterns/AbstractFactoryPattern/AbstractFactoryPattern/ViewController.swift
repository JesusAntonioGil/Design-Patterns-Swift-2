//
//  ViewController.swift
//  AbstractFactoryPattern
//
//  Created by Jesus Antonio Gil on 17/12/15.
//  Copyright © 2015 Jesus Antonio Gil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        //Products for 38mm Watch
        let manufacture1 = WatchFactory.getFactory(WatchSize._38mm)
        let productA = manufacture1.createBand(BandType.Milanese)
        print("productA")
        print(productA.color)
        print(productA.size)
        print(productA.type)
        let productB = manufacture1.createDial(MaterialType.Gold)
        print("productB")
        print(productB.material)
        print(productB.size)
        
        //Here we delivers products form the Manufacture 2 specialized in products for the 42mm Watch
        let manufacture2 = WatchFactory.getFactory(WatchSize._42mm)
        let productC = manufacture2.createBand(BandType.LinkBracelet)
        print("productC")
        print(productC.color)
        print(productC.size)
        print(productC.type)
        let productD = manufacture2.createDial(MaterialType.Gold)
        print("productD")
        print(productD.material)
        print(productD.size)
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }


}

