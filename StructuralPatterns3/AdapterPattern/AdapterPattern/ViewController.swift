//
//  ViewController.swift
//  AdapterPattern
//
//  Created by Jesus Antonio Gil on 2/1/16.
//  Copyright © 2016 Jesus Antonio Gil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        print("*** Start test program")
        
        //Create our Charger
        let charger = Charger()
        print("*** Charger ready test program")
        
        
        //Test 1
        //Charge a Pear Mobile Phone
        print("Will charge a Pear Mobile Phone")
        //1 mobile and adapter creation
        let pearPhone = PearMobilePhone()
        let pearAdapter = PeerAdapter(phone: pearPhone)
        //We plug the portable to our charger through the adapter
        charger.plugMobilePhone(pearAdapter)
        
        
        print("*** -")
        //Test 2
        //Charge a SamSing Mobile Phone
        print("Will charge a SamSing Mobile Phone")
        //1 mobile and adapter creation
        let samSingPhone = SamSingMobilePhone()
        let samSingAdapter = SamSingAdapter(phone: samSingPhone)
        //We plug the portable to our charger through the adapter
        charger.plugMobilePhone(samSingAdapter)
        
        
        print("*** End test program")
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }


}

