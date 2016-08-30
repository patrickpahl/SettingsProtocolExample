//
//  SettingsViewController.swift
//  Settings
//
//  Created by Patrick Pahl on 8/22/16.
//  Copyright © 2016 Patrick Pahl. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, SettingTableViewCellDelegate {

    //Add tableViewDelegate and UITableViewDataSource
    //For protocol, add SettingTableViewCellDelegate
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return SettingController.sharedController.settingsArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if let cell = self.tableView.dequeueReusableCellWithIdentifier("settingCell", forIndexPath: indexPath) as? SettingsTableViewCell {
        //Have to cast cell as our custom cell. To unwrap, add 'if' and '{' and after code '}'. Add 2nd return 'return UITableViewCell()' which would return an empty cell.
        
        let setting = SettingController.sharedController.settingsArray[indexPath.row]
        
        cell.updateWithSetting(setting)
        cell.delegate = self
            
        return cell
        
        }
        return UITableViewCell()    //return an empty cell if 'if stmt' above fails.
    }
    
    
    func settingSwitchForCellValueChanged(cell: SettingsTableViewCell, isOn: Bool) {
    
        guard let setting = cell.setting else {return}
        SettingController.sharedController.updateSettingToggle(isOn, setting: setting)
        self.tableView.reloadData()
    }
    
}
