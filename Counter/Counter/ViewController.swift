//
//  ViewController.swift
//  Counter
//
//  Created by Will Ockenden on 10/01/2016.
//  Copyright © 2016 Sill. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    @IBOutlet weak var storeDisplay: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setDisplay = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var currentCount = 0
    
    @IBAction func count(sender: UIButton) {
        
        currentCount++
        print ("\(currentCount)")
        setDisplay = currentCount
    }

    @IBAction func reset(sender: UIButton) {
        setDisplay = 0
        currentCount = 0
    }
    
    @IBAction func store(sender: UIButton) {
        setStoreDisplay = currentCount
    
    }
    
    
    var setDisplay: Int {
        get {
            return NSNumberFormatter().numberFromString(display.text!)!.integerValue
        }
        
        set {
            display.text = "\(newValue)"
        }
    }
    
    var setStoreDisplay: Int {
        get {
            //return NSNumberFormatter().numberFromString(storeDisplay.text!)!.integerValue
            return 0
        }
        
        set {
            storeDisplay.text = "\(newValue)"
        }
    }
}

