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
    
    private let switchedOnLight: CGFloat = 1
    private let switchedOffLight = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        redLightView.alpha = switchedOffLight
        
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
        yellowLightView.alpha = switchedOffLight
        
        greenLightView.layer.cornerRadius = greenLightView.frame.width / 2
        greenLightView.alpha = switchedOffLight
        
        startNextButton.layer.cornerRadius = startNextButton.frame.height / 2
    }
    
    @IBAction func startButtonDidTapped() {
        if startNextButton.currentTitle == "start".uppercased() {
            startNextButton.setTitle("NEXT", for: .normal)
        }
    
        if redLightView.alpha == switchedOnLight {
            yellowLightView.alpha = switchedOnLight
            redLightView.alpha = switchedOffLight
        } else if yellowLightView.alpha == switchedOnLight {
            greenLightView.alpha = switchedOnLight
            yellowLightView.alpha = switchedOffLight
        } else if greenLightView.alpha == switchedOnLight {
            redLightView.alpha = switchedOnLight
            greenLightView.alpha = switchedOffLight
        } else {
            redLightView.alpha = switchedOnLight
        }
    }
}

