//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Thomas Wade on 1/20/20.
//  Copyright © 2020 Thomas Wade. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = -1
    var messageNumber = -1
    let totalNumberOfImages = 9
    var audioPlayer = AVAudioPlayer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
        
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        
        
        
        let messages = ["You Are Awesome!",
                        "You Are Amazing",
                        "You Are Incredible!",
                        "You have the design skill of Jony Ive",
                        "You are the best coder ever!",
                        "When the genius bar needs help, they call you!"]
        
        var newMessageNumber: Int
        repeat {
            newMessageNumber = Int.random(in: 0...messages.count-1)
        } while messageNumber == newMessageNumber
        
        messageNumber = newMessageNumber
        messageLabel.text = messages[messageNumber]
        
        var newImageNumber: Int
        repeat {
            newImageNumber = (Int.random(in: 0...totalNumberOfImages))
        } while imageNumber == newImageNumber
        
        imageNumber = newImageNumber
        imageView.image = UIImage(named: "image\(imageNumber)")
        
        if let sound = NSDataAsset(name: "sound0"){
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print("\(error.localizedDescription)")
                
            }
        } else {
            print("There was an error")
        }
        

    }
    
}

