//
//  ViewController.swift
//  Bip the Guy
//
//  Created by Kenyan Houck on 2/4/19.
//  Copyright © 2019 Kenyan Houck. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageToPunch: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func libraryPressed(_ sender: UIButton) {
    }
    
    
    @IBAction func cameraPressed(_ sender: UIButton) {
    }
    
    
    @IBAction func imagedTapped(_ sender: UITapGestureRecognizer) {
        print ("Hey! You just pressed the Image!")
    }
}

