//
//  ViewController.swift
//  You Are Awesome
//
//  Created by Kelvin Cheng on 1/19/20.
//  Copyright © 2020 Kelvin Cheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
    }

    @IBAction func showMessageButton(_ sender: UIButton) {
        let awesomeMessage = "You are awesome!"
        let greatMessage = "You are great!"
        let bombMessage = "You are the bomb!"
        
        if messageLabel.text == awesomeMessage {
            messageLabel.text = greatMessage
            imageView.image = UIImage(named: "image1")
        }
        else if messageLabel.text == greatMessage{
            messageLabel.text = bombMessage
            imageView.image = UIImage(named: "image2")
        }
        else {
            messageLabel.text = awesomeMessage
            imageView.image = UIImage(named: "image0")
        }
    }
}
