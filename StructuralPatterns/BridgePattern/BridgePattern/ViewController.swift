//
//  ViewController.swift
//  BridgePattern
//
//  Created by Jesus Antonio Gil on 17/12/15.
//  Copyright © 2015 Jesus Antonio Gil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let tvRemoteControl = RemoteControl(impl: TV())
        tvRemoteControl.turnOn()
        
        let lightRemoteControl = RemoteControl(impl: Light())
        lightRemoteControl.turnOn()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }


}

