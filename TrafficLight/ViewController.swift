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
    
    let switchedOnLight: CGFloat = 1
    let switchedOffLight = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let trafficLightRadius: CGFloat = 75
        
        redTrafficLight.layer.cornerRadius = trafficLightRadius
        redTrafficLight.alpha = switchedOffLight
        
        yellowTrafficLight.layer.cornerRadius = trafficLightRadius
        yellowTrafficLight.alpha = switchedOffLight
        
        greenTrafficLight.layer.cornerRadius = trafficLightRadius
        greenTrafficLight.alpha = switchedOffLight
        
        startNextButton.layer.cornerRadius = 27.5
    }
    
    @IBAction func startButtonDidTapped() {
        if startNextButton.currentTitle == "start".uppercased() {
            startNextButton.setTitle("NEXT", for: .normal)
        }
    
        if redTrafficLight.alpha == switchedOnLight {
            yellowTrafficLight.alpha = switchedOnLight
            redTrafficLight.alpha = switchedOffLight
        } else if yellowTrafficLight.alpha == switchedOnLight {
            greenTrafficLight.alpha = switchedOnLight
            yellowTrafficLight.alpha = switchedOffLight
        } else if greenTrafficLight.alpha == switchedOnLight {
            redTrafficLight.alpha = switchedOnLight
            greenTrafficLight.alpha = switchedOffLight
        } else {
            redTrafficLight.alpha = switchedOnLight
        }
    }
}

