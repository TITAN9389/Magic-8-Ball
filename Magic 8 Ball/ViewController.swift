//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Sebouh Mazloumian on 3/26/19.
//  Copyright © 2019 Sebouh Mazloumian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let magicBallImages: Array  = ["ball1","ball2","ball3","ball4","ball5"]
    var currentImageIndex : Int = 0

    @IBOutlet weak var magicBallImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        changeBallImage()
    }

    @IBAction func askButtonPress(_ sender: UIButton) {
        changeBallImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        changeBallImage()
    }
    
    func changeBallImage() {
        currentImageIndex = Int.random(in: 0 ... 4)
        magicBallImage.image = UIImage.init(named: magicBallImages[currentImageIndex])
    }
    
}

