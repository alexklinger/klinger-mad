//
//  ViewController.swift
//  lab02
//
//  Created by Alex Klinger on 9/24/14.
//  Copyright (c) 2014 Alex Klinger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var disco: UIImageView!
    
    @IBOutlet weak var favDisco: UILabel!
    
    @IBAction func earthWind(sender: UIButton) {
        if sender.tag==1{
            disco.image=UIImage(named: "earth.png")
        }
        if sender.tag==2{
            disco.image=UIImage(named: "sly.png")
        }
    }
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

