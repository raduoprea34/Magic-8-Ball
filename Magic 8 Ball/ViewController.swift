//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Radu on 9/27/17.
//  Copyright © 2017 Radu Oprea. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomBallNumber : Int = 0
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        imageView.image = UIImage(named: "ball5")
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
    
        newBallImage()
    
    }
    
    func newBallImage(){
        
        randomBallNumber = Int(arc4random_uniform(5))
        
        imageView.image = UIImage(named: ballArray[randomBallNumber])
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
}

