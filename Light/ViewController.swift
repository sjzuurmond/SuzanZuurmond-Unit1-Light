//
//  ViewController.swift
//  Light
//
//  Created by Suzan Zuurmond on 02/11/2018.
//  Copyright © 2018 Suzan Zuurmond. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var lightOn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // switch color when screen is pressed
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn = !lightOn
        updateUI()
    }
    
    // adjust screen to the right color
    func updateUI() {
        view.backgroundColor = lightOn ? .white : .black
    }
}
