//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Thomas Wade on 1/20/20.
//  Copyright © 2020 Thomas Wade. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("👍🏼 viewDidLoad has run!")
        messageLabel.text = "Fabulous? Thats you!"
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        print("😎 The message button was pressed!")
        messageLabel.text = "You Are Awesome!"
    }
    
}

