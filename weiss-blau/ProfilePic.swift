//
//  ProfilePic.swift
//  weiss-blau
//
//  Created by Stefan Blos on 20.02.16.
//  Copyright © 2016 Stefan Blos. All rights reserved.
//

import UIKit

@IBDesignable
class ProfilePic: UIImageView {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = self.frame.size.width / 2
        clipsToBounds = true
    }

}
