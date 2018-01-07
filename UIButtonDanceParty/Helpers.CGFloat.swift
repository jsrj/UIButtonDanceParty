//
//  Helpers.CGFloat.swift
//  UIButtonDanceParty
//
//  Created by Arjay Jones on 1/6/18.
//  Copyright © 2018 ArjayCodes. All rights reserved.
//

import Foundation
import UIKit

func generateRandFloat() -> CGFloat {
    return CGFloat(arc4random_uniform(UInt32(100)))/100.0
}
