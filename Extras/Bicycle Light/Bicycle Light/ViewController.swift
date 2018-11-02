//
//  ViewController.swift
//  Bicycle Light
//
//  Created by Suzan Zuurmond on 02/11/2018.
//  Copyright © 2018 Suzan Zuurmond. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var backOn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // start with front and back lights on
        toggleFlash()
        checkBack()
        
        // standard buttons
        frontLight.setTitleColor(.white, for: .normal)
        frontLight.setTitle("Front Light", for: .normal)
        backLight.setTitleColor(.white, for: .normal)
        backLight.setTitle("Back Light", for: .normal)
    }
    
    @IBOutlet weak var frontLight: UIButton!
    
    @IBAction func switchFrontLight(_ sender: Any) {
        toggleFlash()
    }
    
    @IBOutlet weak var backLight: UIButton!
    
    @IBAction func switchBackLight(_ sender: Any) {
        backOn = !backOn
        checkBack()
    }
    
    func checkBack() {
        view.backgroundColor = backOn ? .red : .black
    }
    
    // function from Lance on https://stackoverflow.com/questions/27207278/how-to-turn-flashlight-on-and-off-in-swift
    func toggleFlash() {
        let device = AVCaptureDevice.default(for: AVMediaType.video)
        
        if (device != nil) {
            if (device!.hasTorch) {
                do {
                    try device!.lockForConfiguration()
                    if (device!.torchMode == AVCaptureDevice.TorchMode.on) {
                        device!.torchMode = AVCaptureDevice.TorchMode.off
                    } else {
                        do {
                            try device!.setTorchModeOn(level: 1.0)
                        } catch {
                            print(error)
                        }
                    }
                    
                    device!.unlockForConfiguration()
                } catch {
                    print(error)
                }
            }
        }
    }


}

