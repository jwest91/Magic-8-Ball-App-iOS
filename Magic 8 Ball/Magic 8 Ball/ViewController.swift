//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Justin West on 2/25/18.
//  Copyright © 2018 Justin West. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallNumber : Int = 0
    
    @IBOutlet weak var imageView: UIImageView!
    
    func newBallImage()
    {
        randomBallNumber = Int(arc4random_uniform(5))
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
    @IBAction func askButtonPressed(_ sender: UIButton)
    {
        newBallImage()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?)
    {
        newBallImage()
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        newBallImage()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
}

