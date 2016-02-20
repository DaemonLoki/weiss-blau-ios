//
//  MaterialView.swift
//  weiss-blau
//
//  Created by Stefan Blos on 20.02.16.
//  Copyright © 2016 Stefan Blos. All rights reserved.
//

import UIKit

@IBDesignable
class MaterialView: UIView {

    override func awakeFromNib() {
        layer.shadowColor = UIColor(red: SHADOW_COLOR, green: SHADOW_COLOR, blue: SHADOW_COLOR, alpha: 0.5).CGColor
        layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        layer.shadowOpacity = 0.8
        layer.shadowRadius = 5.0
        layer.cornerRadius = 2.0
    }

}
