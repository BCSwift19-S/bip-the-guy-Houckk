//
//  ViewController.swift
//  Bip the Guy
//
//  Created by Kenyan Houck on 2/4/19.
//  Copyright © 2019 Kenyan Houck. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var imageToPunch: UIImageView!
    
    var audioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //MARK: Functions
    func animateImage()
    {
        let bounds = self.imageToPunch.bounds
        let shrinkValue: CGFloat = 60
        
        //shrink image by 60 pixels
        self.imageToPunch.bounds = CGRect (x: self.imageToPunch.bounds.origin.x + shrinkValue, y: self.imageToPunch.bounds.origin.y + shrinkValue, width: self.imageToPunch.bounds.size.width - shrinkValue, height: self.imageToPunch.bounds.size.height - shrinkValue)
        
        UIView.animate(withDuration: 0.25, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: [], animations: {self.imageToPunch.bounds = bounds}, completion: nil)
    }
    
    
    func playSound(soundName: String, audioPlayer: inout AVAudioPlayer) {
        //play a sound
        
        
        //Can we load in the file soundName
        if let sound = NSDataAsset(name: soundName)
        {
            do{
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print ("ERROR: data in \(soundName) coundlnt be played as a sound")
            }
        } else {
            //if reading in the NSDataAssest didnt work, tell the developer/report error
            print ("ERROR: file\(soundName) didn't load")
        }
    }
    
    
    
    
    
    
    //MARK: Actions

    @IBAction func libraryPressed(_ sender: UIButton) {
    }
    
    
    @IBAction func cameraPressed(_ sender: UIButton) {
    }
    
    
    @IBAction func imagedTapped(_ sender: UITapGestureRecognizer) {
        //print ("Hey! You just pressed the Image!")
        animateImage()
        playSound(soundName: "PunchSound", audioPlayer: &audioPlayer)
    }
}

