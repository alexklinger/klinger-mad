//
//  ViewController.swift
//  George
//
//  Created by Alex Klinger on 9/16/14.
//  Copyright (c) 2014 Alex Klinger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var georgeYoung: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageControl: UISegmentedControl!
    @IBAction func changeImage(sender: UISegmentedControl) {
        updateImage()
        updateCaps()
    }
    @IBOutlet weak var capitalizedSwitch: UISwitch!
    @IBAction func updateFont(sender: UISwitch) {
        if capitalizedSwitch.on{
            titleLabel.text=titleLabel.text?.uppercaseString
        }
        else{
            titleLabel.text=titleLabel.text?.lowercaseString
        }
    }
    @IBOutlet weak var fontSizeLabel: UILabel!
    @IBAction func fontSizeSlider(sender: UISlider) {
        let fontSize=sender.value
        fontSizeLabel.text=String(format: "%.0f", fontSize)
        let fontSizeCGFloat=CGFloat(fontSize)
        titleLabel.font=UIFont.systemFontOfSize(fontSizeCGFloat)
    }
    
    func updateImage(){
        if imageControl.selectedSegmentIndex==0{
            titleLabel.text="Young George"
            georgeYoung.image=UIImage(named: "georgeYoung.jpg")
        }
        else if imageControl.selectedSegmentIndex==1{
            titleLabel.text="Old George"
            georgeYoung.image=UIImage(named: "gh3.jpg")
        }
    }
    
    func updateCaps(){
        if capitalizedSwitch.on{
            titleLabel.text=titleLabel.text?.uppercaseString
        }
        else{
            titleLabel.text=titleLabel.text?.lowercaseString
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

