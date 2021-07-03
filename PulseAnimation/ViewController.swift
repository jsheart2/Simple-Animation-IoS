//
//  ViewController.swift
//  PulseAnimation
//
//  Created by JSHEART on 02/07/21.
//  Copyright © 2021 JSHEART. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        btn.layer.cornerRadius = btn.frame.height / 1
        btn.clipsToBounds = true
    }

    @IBAction func onClickBtn(_ sender: UIButton) {
        let pulse = PulseAnimation(numberOfPulses: 4, radius: 150, position: sender.center)
        pulse.animationDuration = 0.5
        pulse.backgroundColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
        self.view.layer.insertSublayer(pulse, below: self.view.layer)
    }
    
}

