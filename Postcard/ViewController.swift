//
//  ViewController.swift
//  Postcard
//
//  Created by Krzysztof Kula on 02/12/14.
//  Copyright (c) 2014 Krzysztof Kula. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.text = enterMessageTextField.text
        enterMessageTextField.text = ""
        
        nameLabel.text = enterNameTextField.text
        enterNameTextField.text = ""
        
        enterMessageTextField.resignFirstResponder()
        enterNameTextField.resignFirstResponder()
        
        messageLabel.hidden = false
        nameLabel.hidden = false
        
        messageLabel.textColor = UIColor.redColor()
        nameLabel.textColor = UIColor.blueColor()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

