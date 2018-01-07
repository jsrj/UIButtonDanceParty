//
//  Extensions.UIButton.swift
//  UIButtonDanceParty
//
//  Created by Arjay Jones on 1/6/18.
//  Copyright © 2018 ArjayCodes. All rights reserved.
//

import UIKit

extension UIButton {
    func colorize() {
        // Causes the button to cycle through random backgroundColors when invoked.
        UIView.animate(withDuration: 0.12, animations: {
            self.backgroundColor = UIColor(
                red: generateRandFloat(),
                green: generateRandFloat(),
                blue: generateRandFloat(),
                alpha: self.alpha
            )
        }) { (loopFinished) in
            // Recursively calls itself
            self.colorize()
        }
    }
    
    
    func wiggle() {
        // Causes the button to shake when invoked.
        let key = "position"
        let wiggleAnim = CABasicAnimation(keyPath: key)
        
        wiggleAnim.duration = 0.10
        wiggleAnim.repeatCount = 5
        wiggleAnim.autoreverses = true
        wiggleAnim.fromValue = CGPoint(x: self.center.x-4.0, y: self.center.y)
        wiggleAnim.toValue = CGPoint(x: self.center.x+4.0, y: self.center.y)
        
        layer.add(wiggleAnim, forKey: key)
    }
    
    
    func dim() {
        // Causes the button to fade when invoked.
        UIView.animate(withDuration: 0.25) {
            // if self.alpha is dimmed, undim it, else dim it.
            self.alpha = self.alpha == 0.5 ? 1.0 : 0.5
        }
    }
}
