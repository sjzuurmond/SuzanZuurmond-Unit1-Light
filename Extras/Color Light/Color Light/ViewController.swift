//
//  ViewController.swift
//  Color Light
//
//  Created by Suzan Zuurmond on 02/11/2018.
//  Copyright © 2018 Suzan Zuurmond. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var colorNumber = 1

    override func viewDidLoad() {
        super.viewDidLoad()
        checkColor()
    }

    // change color
    @IBAction func changeColor(_ sender: Any) {
        colorNumber += 1
        checkColor()
    }
 
    // set color according to colorNumber
    func checkColor() {
        switch colorNumber {
        case 1 :
            view.backgroundColor = .red
        case 2 :
            view.backgroundColor = .orange
        case 3 :
            view.backgroundColor = .yellow
        case 4 :
            view.backgroundColor = .green
        case 5 :
            view.backgroundColor = .cyan
        case 6 :
            view.backgroundColor = .blue
        case 7:
            view.backgroundColor = .purple
            colorNumber = 0
        default:
            print("something went wrong")
        }
    
    }
}

