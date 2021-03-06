//
//  ViewController.swift
//  Postcard
//
//  Created by Evan Gapella on 18/09/2014.
//  Copyright (c) 2014 Evan Gapella. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterAMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton)
    {
        // Code will evaluate when we press the button 
        
        //unhide labels
        messageLabel.hidden = false
        nameLabel.hidden = false
        //set label text
        messageLabel.text = enterAMessageTextField.text
        nameLabel.text = enterNameTextField.text
        //clear field text
        enterAMessageTextField.text = ""
        enterNameTextField.text = ""
        //remove keyboard
    enterAMessageTextField.resignFirstResponder()
        //set color of label
        messageLabel.textColor = UIColor.redColor()
        nameLabel.textColor = UIColor.blueColor()
        //change button text
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    }

}

