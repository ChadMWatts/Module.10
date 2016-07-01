//
//  SettingsTableViewCell.swift
//  settingsApp
//
//  Created by Chad Watts on 5/23/16.
//  Copyright © 2016 Chad Watts. All rights reserved.
//

import UIKit


class SettingsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var settingLabel: UILabel!
    @IBOutlet weak var settingSwitch: UISwitch!
    
    var setting: Setting?
    weak var delegate: SettingTableViewCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func updateSetting(setting: Setting) {
        
        self.setting = setting
        iconImageView.image = setting.image
        settingLabel.text = setting.name
        settingSwitch.on = setting.isSet
        if setting.isSet {
            
            self.backgroundColor = .yellowColor()
        } else {
            self.backgroundColor = .whiteColor()
        }
        
    }
    
    @IBAction func settingSwitchValueChanged(sender: AnyObject) {
      
        delegate?.settingValueChanged(self, selected: settingSwitch.on)
    }
    
}

protocol SettingTableViewCellDelegate: class {
    
    func settingValueChanged(cell: SettingsTableViewCell, selected: Bool)
}





