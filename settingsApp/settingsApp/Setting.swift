//
//  Setting.swift
//  settingsApp
//
//  Created by Chad Watts on 5/23/16.
//  Copyright © 2016 Chad Watts. All rights reserved.
//

import UIKit

class Setting {
    
    var image: UIImage?
    let name: String
    var isSet: Bool
    
    init(name: String, isSet: Bool, image: UIImage?) {
        
        self.name = name
        self.isSet = isSet
        self.image = image
    }
    
}
