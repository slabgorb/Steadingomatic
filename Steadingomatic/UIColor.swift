//
//  UIColor.swift
//  Steadingomatic
//
//  Created by Keith Avery on 4/22/16.
//  Copyright © 2016 Keith Avery. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    static func random() -> UIColor {
        let randomRed: CGFloat = CGFloat(drand48())
        let randomGreen: CGFloat = CGFloat(drand48())
        let randomBlue: CGFloat = CGFloat(drand48())
        return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
    }

    func contrasting() -> UIColor {
        if let (red, green, blue, _) = rgb() {
            let adjustment = ( 0.299 * red + 0.587 * green + 0.114 * blue )
            let a = 1 -  adjustment / 255
            return a < 0.5 ? UIColor.blackColor() : UIColor.whiteColor()
        }
        return UIColor.blackColor()
    }

    func rgb() -> (red:Double, green:Double, blue:Double, alpha:Double)? {
        var fRed : CGFloat = 0
        var fGreen : CGFloat = 0
        var fBlue : CGFloat = 0
        var fAlpha: CGFloat = 0
        if self.getRed(&fRed, green: &fGreen, blue: &fBlue, alpha: &fAlpha) {
            let iRed = Double(fRed * 255.0)
            let iGreen = Double(fGreen * 255.0)
            let iBlue = Double(fBlue * 255.0)
            let iAlpha = Double(fAlpha * 255.0)

            return (red:iRed, green:iGreen, blue:iBlue, alpha:iAlpha)
        } else {
            // Could not extract RGBA components:
            return nil
        }
    }
}