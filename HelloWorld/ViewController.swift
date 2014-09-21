//
//  ViewController.swift
//  HelloWorld
//
//  Created by Alex Klinger on 8/28/14.
//  Copyright (c) 2014 Alex Klinger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBAction func buttonPressed(sender: UIButton) {
        messageText.text="Hello World"
    }
    @IBOutlet weak var messageText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

