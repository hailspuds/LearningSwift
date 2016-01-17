//
//  ViewController.swift
//  HidingThingsExercise
//
//  Created by Will Ockenden on 11/01/2016.
//  Copyright © 2016 Sill. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redIcon: UIImageView!
    @IBOutlet weak var blueIcon: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func hideBlueIconButton(sender: UIButton) {
        blueIcon.hidden = true
    }

    @IBAction func hideRedIconButton(sender: UIButton) {
        redIcon.hidden = true
    }
}

