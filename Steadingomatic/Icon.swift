//
//  Icon.swift
//  Steadingomatic
//
//  Created by Keith Avery on 4/23/16.
//  Copyright © 2016 Keith Avery. All rights reserved.
//

import Foundation
import UIKit

struct Icon: PropertyListReadable {
    var image: IconImage
    var color: UIColor
    var backgroundColor: UIColor
    
    init(icon: IconImage, backgroundColor: UIColor? = nil, color: UIColor? = nil) {
        self.image = icon
        if let backgroundColor = backgroundColor {
            self.backgroundColor = backgroundColor
        } else {
            self.backgroundColor = UIColor.random()
        }
        if let color = color {
            self.color = color
        } else {
            self.color = self.backgroundColor.contrasting()
        }
    }
    func propertyListRepresentation() -> NSDictionary {
        return ["icon": self.image.rawValue, "color": self.color, "backgroundColor": self.backgroundColor]
    }
    
    init?(propertyListRepresentation: NSDictionary?) {
        guard let values = propertyListRepresentation else {return nil}
        if let iconRaw = values["icon"] as? String, color = values["color"] as? UIColor, backgroundColor = values["backgroundColor"] as? UIColor {
            if let iconImage = IconImage(rawValue: iconRaw) {
                self.image = iconImage
            } else {
                self.image = .Acorn
            }
            self.color = color
            self.backgroundColor = backgroundColor
        } else {
            return nil
        }
    }
    
}