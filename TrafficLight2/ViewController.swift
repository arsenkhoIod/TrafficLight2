//
//  ViewController.swift
//  TrafficLight2
//
//  Created by mac on 30.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var switchButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        switchButton.layer.cornerRadius = 10
        redLight.layer.cornerRadius = redLight.bounds.height / 2
        yellowLight.layer.cornerRadius = yellowLight.bounds.height / 2
        greenLight.layer.cornerRadius = greenLight.bounds.height / 2
    }
    
    
    @IBAction func switchingColor() {
        switchButton.setTitle("NEXT", for: .normal)
        
            if redLight.alpha == 1 {
                redLight.alpha = 0.3
                yellowLight.alpha = 1
            } else if yellowLight.alpha == 1 {
                yellowLight.alpha = 0.3
                greenLight.alpha = 1
            } else if greenLight.alpha == 1 {
                greenLight.alpha = 0.3
                redLight.alpha = 1
            } else {
                redLight.alpha = 1
            }
    
        
    }
    
    
}

