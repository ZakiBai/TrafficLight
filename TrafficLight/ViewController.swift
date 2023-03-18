//
//  ViewController.swift
//  TrafficLight
//
//  Created by Zaki on 18.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLabel: UIView!
    @IBOutlet var yellowLabel: UIView!
    @IBOutlet var greenLabel: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        redLabel.layer.cornerRadius = 60
        yellowLabel.layer.cornerRadius = 60
        greenLabel.layer.cornerRadius = 60
        
        redLabel.alpha = 0.3
        yellowLabel.alpha = 0.3
        greenLabel.alpha = 0.3
        
        startButton.layer.cornerRadius = 15
    }
    
    
    var index = 0
    @IBAction func pressedStartButton(_: UIButton) {
        startButton.setTitle("NEXT", for: .normal)
        index += 1
        
        switch index {
        case 1:
            redLabel.alpha = 1
        case 2:
            redLabel.alpha = 0.3
            yellowLabel.alpha = 1
        case 3:
            yellowLabel.alpha = 0.3
            greenLabel.alpha = 1
        default:
            greenLabel.alpha = 0.3
            redLabel.alpha = 1
            index = 1
        }
        
        
                
        
    }
}
