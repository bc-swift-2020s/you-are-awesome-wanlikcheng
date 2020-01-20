//
//  ViewController.swift
//  You Are Awesome
//
//  Created by Kelvin Cheng on 1/19/20.
//  Copyright © 2020 Kelvin Cheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func showMessageButton(_ sender: Any) {
        viewLabel.text = "You are awesome!"
        viewLabel.textColor = UIColor.systemRed
        imageView.image = UIImage(named: "image0")
    }
    
}

