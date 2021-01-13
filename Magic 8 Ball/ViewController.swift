//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Mili Mehta on 04/03/19.
//  Copyright © 2019 Mili Mehta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomBallIndex1 : Int = 0
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]

    @IBOutlet weak var ballImage1: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateBallImage()
    }

    @IBAction func ballUpdateButton(_ sender: UIButton) {
        updateBallImage()
    }
    
    func updateBallImage() {
        
        randomBallIndex1 = Int(arc4random_uniform(5))
        
        ballImage1.image = UIImage(named: ballArray[randomBallIndex1])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateBallImage()
    }
}

