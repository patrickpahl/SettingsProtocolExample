//
//  Setting.swift
//  Settings
//
//  Created by Patrick Pahl on 8/22/16.
//  Copyright © 2016 Patrick Pahl. All rights reserved.


import Foundation
import UIKit

class Setting {
    
    let name: String
    var iconImage: UIImage?
    var isOn: Bool
    
    init(name: String, iconImage: UIImage?, isOn: Bool){
        
        self.name = name
        self.iconImage = iconImage
        self.isOn = isOn
    }
}





