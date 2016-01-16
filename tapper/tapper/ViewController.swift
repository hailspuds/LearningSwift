//
//  ViewController.swift
//  tapper
//
//  Created by Will Ockenden on 16/01/2016.
//  Copyright © 2016 Sill. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var maxTaps = 0
    var currentTaps = 0
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var btnPlay: UIButton!
    @IBOutlet weak var txtTapsToWin: UITextField!

    @IBOutlet weak var btnTapToWin: UIButton!
    @IBOutlet weak var lblTaps: UILabel!
    
    
    @IBAction func btnPlay(sender: UIButton) {
        if txtTapsToWin.text != nil && txtTapsToWin.text != "" {
            logoImg.hidden = true
            btnPlay.hidden = true
            txtTapsToWin.hidden = true
            btnTapToWin.hidden = false
            lblTaps.hidden = false
            
            
            maxTaps = Int(txtTapsToWin.text!)!
            currentTaps = 0
            
            updateTapsLabel()
            
        }

    }
    
    @IBAction func btnCoinTap(sender: UIButton) {
        currentTaps++
        updateTapsLabel()
        
        if isGameOver() {
            restartGame()
        }
        
    }
    
    func restartGame() {
        maxTaps = 0
        txtTapsToWin.text = ""
        logoImg.hidden = false
        btnPlay.hidden = false
        txtTapsToWin.hidden = false
        btnTapToWin.hidden = true
        lblTaps.hidden = true
        
    }
    
    func isGameOver() -> Bool {
        if maxTaps <= currentTaps {
            return true
        } else {
            return false
        }
    }
    
    func updateTapsLabel() {
        lblTaps.text = "\(currentTaps) Taps"
    }
    
}

