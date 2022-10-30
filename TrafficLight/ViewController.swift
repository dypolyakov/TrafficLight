//
//  ViewController.swift
//  TrafficLight
//
//  Created by Дмитрий Поляков on 30.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redTrafficLight: UIView!
    @IBOutlet var yellowTrafficLight: UIView!
    @IBOutlet var greenTrafficLight: UIView!
    @IBOutlet var startNextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redTrafficLight.layer.cornerRadius = 75
        redTrafficLight.alpha = 0.3
        
        yellowTrafficLight.layer.cornerRadius = 75
        yellowTrafficLight.alpha = 0.3
        
        greenTrafficLight.layer.cornerRadius = 75
        greenTrafficLight.alpha = 0.3
        
        startNextButton.layer.cornerRadius = 27.5
    }
    
    
    @IBAction func startButtonDidTapped() {
        startNextButton.setTitle("NEXT", for: .normal)
        if redTrafficLight.alpha == 1 {
            yellowTrafficLight.alpha = 1
            redTrafficLight.alpha = 0.3
        } else if yellowTrafficLight.alpha == 1 {
            greenTrafficLight.alpha = 1
            yellowTrafficLight.alpha = 0.3
        } else if greenTrafficLight.alpha == 1{
            redTrafficLight.alpha = 1
            greenTrafficLight.alpha = 0.3
        } else {
            redTrafficLight.alpha = 1
        }
    }
}

