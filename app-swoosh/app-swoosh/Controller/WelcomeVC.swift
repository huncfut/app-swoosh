//
//  ViewController.swift
//  app-swoosh
//
//  Created by Kuba Zeligowski on 24.10.2017.
//  Copyright © 2017 Kuba Zeligowski. All rights reserved.
//

import UIKit

class WelcomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnGetStartedPressed(_ sender: Any) {
        performSegue(withIdentifier: "leagueVCSegue", sender: self)
    }
    
}

