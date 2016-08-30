//
//  SettingController.swift
//  Settings
//
//  Created by Patrick Pahl on 8/22/16.
//  Copyright © 2016 Patrick Pahl. All rights reserved.
//

import Foundation
import UIKit

class SettingController {
    
    static let sharedController = SettingController()
    
    var settingsArray: [Setting]
    
    init(){
        
        let music = Setting(name: "Music", iconImage: UIImage(named: "music.png"), isOn: false)
        let appstore = Setting(name: "App Store", iconImage: UIImage(named: "appstore.png"), isOn: false)
        let books = Setting(name: "Books", iconImage: UIImage(named: "books.png"), isOn: false)
        let updates = Setting(name: "Updates", iconImage: UIImage(named: "updates.png"), isOn: false)
        
        //init mock data
        self.settingsArray = [music, appstore, books, updates]
    
    }
    
    func updateSettingToggle(switchValue: Bool, setting: Setting){
        
        setting.isOn = switchValue
    }
}