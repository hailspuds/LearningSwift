//
//  ViewController.swift
//  Calculator
//
//  Copyright © 2016 Sill. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //@IBOutlet = little circle in line numbers. mouse over shows connection
    //don't worry about typing in.
    
    //weak = at the moment, ignore it. 
    //! coming to this
    
    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTypingANumber = false

    var brain = CalculatorBrain()
    
    @IBAction func appendDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        //unwrapping optionals here
        if userIsInTheMiddleOfTypingANumber {
            display.text = display.text! + digit
            //print ("digit = \(digit)")
        } else {
            display.text = digit
            userIsInTheMiddleOfTypingANumber = true
        }
    }
    
    @IBAction func operate(sender: UIButton) {
        if userIsInTheMiddleOfTypingANumber{
            enter()
        }
        if let operation = sender.currentTitle {
            if let result = brain.performOperation(operation) {
                displayValue = result
            } else {
                displayValue = 0
            }
        }
    }
    
    @IBAction func enter() {
        userIsInTheMiddleOfTypingANumber = false
        if let result = brain.pushOperand(displayValue) {
            displayValue = result
        } else {
            displayValue = 0
            // make this optional
            // maybe an error message in the display
        }
    }
    
    var displayValue: Double {
        get {
            //???
            return NSNumberFormatter().numberFromString(display.text!)!.doubleValue
        }
        
        set {
            display.text! = "\(newValue)"
            userIsInTheMiddleOfTypingANumber = false
        }
    }
    
}

