//
//  ViewController.swift
//  UIButtonDanceParty
//
//  Created by Arjay Jones on 1/6/18.
//  Copyright © 2018 ArjayCodes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorize: UIButton!
    @IBOutlet weak var wiggle:   UIButton!
    @IBOutlet weak var dim:      UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func colorizeBtnPressed(_ sender: UIButton) {
        sender.colorize()
    }
    @IBAction func wiggleBtnPressed(_ sender: UIButton) {
        sender.wiggle()
    }
    @IBAction func dimBtnPressed(_ sender: UIButton) {
        sender.dim()
    }
    
    
}

