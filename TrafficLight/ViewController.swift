//
//  ViewController.swift
//  TrafficLight
//
//  Created by Дмитрий Поляков on 30.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var startNextButton: UIButton!
    
    private let lightIsOn: CGFloat = 1
    private let lightIsOff = 0.3
    private var currentLight = CurrentLight.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.alpha = lightIsOff
        yellowLightView.alpha = lightIsOff
        greenLightView.alpha = lightIsOff
        
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        redLightView.alpha = lightIsOff
        
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
        yellowLightView.alpha = lightIsOff
        
        greenLightView.layer.cornerRadius = greenLightView.frame.width / 2
        greenLightView.alpha = lightIsOff
        
        startNextButton.layer.cornerRadius = startNextButton.frame.height / 2
    }
    
    @IBAction func startButtonDidTapped() {
        if startNextButton.currentTitle == "start".uppercased() {
            startNextButton.setTitle("NEXT", for: .normal)
        }
    
        switch currentLight {
        case .red:
            greenLightView.alpha = lightIsOff
            redLightView.alpha = lightIsOn
            currentLight = .yellow
        case .yellow:
            redLightView.alpha = lightIsOff
            yellowLightView.alpha = lightIsOn
            currentLight = .green
        case .green:
            yellowLightView.alpha = lightIsOff
            greenLightView.alpha = lightIsOn
            currentLight = .red
        }
        
//        if redLightView.alpha == switchedOnLight {
//            yellowLightView.alpha = switchedOnLight
//            redLightView.alpha = switchedOffLight
//        } else if yellowLightView.alpha == switchedOnLight {
//            greenLightView.alpha = switchedOnLight
//            yellowLightView.alpha = switchedOffLight
//        } else if greenLightView.alpha == switchedOnLight {
//            redLightView.alpha = switchedOnLight
//            greenLightView.alpha = switchedOffLight
//        } else {
//            redLightView.alpha = switchedOnLight
//        }
    }
}

// MARK: - CurrentLight
extension ViewController {
    private enum CurrentLight {
        case red, yellow, green
    }
}
