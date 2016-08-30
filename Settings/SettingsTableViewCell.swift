//
//  SettingsTableViewCell.swift
//  Settings
//
//  Created by Patrick Pahl on 8/22/16.
//  Copyright © 2016 Patrick Pahl. All rights reserved.
//

import UIKit

class SettingsTableViewCell: UITableViewCell {
    
    var setting: Setting?
    
    weak var delegate: SettingTableViewCellDelegate?
    
    //MARK: - Outlets
    @IBOutlet weak var picture: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var settingSwitch: UISwitch!

    //MARK: - Actions
    @IBAction func switchValueChanged(sender: AnyObject) {
        
        delegate?.settingSwitchForCellValueChanged(self, isOn: settingSwitch.on)
    }
    
    
    func updateWithSetting(setting: Setting){
        
        self.setting = setting
        
        self.picture.image = setting.iconImage
        self.label.text = setting.name
        self.settingSwitch.on = setting.isOn
        
        if settingSwitch.on == true {
            self.backgroundColor = UIColor.blueColor()
            self.label.textColor = UIColor.whiteColor()
        } else {
            self.backgroundColor = UIColor.whiteColor()
            self.label.textColor = UIColor.blackColor()
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
}

protocol SettingTableViewCellDelegate: class {
    
    func settingSwitchForCellValueChanged(cell: SettingsTableViewCell, isOn: Bool)
}



