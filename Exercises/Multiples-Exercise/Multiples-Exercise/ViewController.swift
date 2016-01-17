//
//  ViewController.swift
//  Multiples-Exercise
//
//  Created by Will Ockenden on 16/01/2016.
//  Copyright © 2016 Sill. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleMultiples: UIImageView!
    @IBOutlet weak var txtMultipleInput: UITextField!
    @IBOutlet weak var btnPlay: UIButton!
    @IBOutlet weak var btnAdd: UIButton!
    @IBOutlet weak var lblMultipleOutput: UILabel!
    @IBOutlet weak var lblYourMultipleIs: UILabel!
    
    var multiple = 0
    var currentSum = 0
    var numberOfAdditions = 0
    let maxNumberOfAdditions = 5

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //set up the app correctly, so the right outlets are showing.
        //i've created a function for this to reduce the amount of code. all it requires is a setting of true or false of the outlets .hidden property
        hideOutlet(false, txtMultipleInputValue: false, btnPlayValue: false, btnAddValue: true, lblMultipleOutputValue: true, lblYourMultipleIsVaue: true)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func startGame(sender: UIButton) {
        if txtMultipleInput.text != nil && txtMultipleInput.text != "" {
            hideOutlet(true, txtMultipleInputValue: true, btnPlayValue: true, btnAddValue: false, lblMultipleOutputValue: false, lblYourMultipleIsVaue: false)
            
            //will crash if there's text in the field!
            multiple = Int(txtMultipleInput.text!)!
            lblMultipleOutput.text = "Press Add to add!"
            lblYourMultipleIs.text = "Your multiple is \(multiple)"
            currentSum = 0
            numberOfAdditions = 0
        }
    }
    
    @IBAction func addToAdd(sender: UIButton) {
        //update the label with the current sum
        if numberOfAdditions <= maxNumberOfAdditions {
            runSums()
            numberOfAdditions++
        } else {
            //end game
            hideOutlet(false, txtMultipleInputValue: false, btnPlayValue: false, btnAddValue: true, lblMultipleOutputValue: true, lblYourMultipleIsVaue: true)
        }
    }
    
    func runSums() {
        let mathsSolution = currentSum + multiple
        lblMultipleOutput.text = "\(currentSum) + \(multiple) = \(mathsSolution)"
        currentSum = mathsSolution
    }

    func hideOutlet (titleMultiplesValue: Bool, txtMultipleInputValue: Bool, btnPlayValue: Bool, btnAddValue: Bool, lblMultipleOutputValue: Bool, lblYourMultipleIsVaue: Bool) {
        titleMultiples.hidden = titleMultiplesValue
        txtMultipleInput.hidden = txtMultipleInputValue
        btnPlay.hidden = btnPlayValue
        btnAdd.hidden = btnAddValue
        lblMultipleOutput.hidden = lblMultipleOutputValue
        lblYourMultipleIs.hidden = lblYourMultipleIsVaue
    }
}

