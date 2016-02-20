//
//  PlayerCell.swift
//  weiss-blau
//
//  Created by Stefan Blos on 20.02.16.
//  Copyright © 2016 Stefan Blos. All rights reserved.
//

import UIKit

class PlayerCell: UITableViewCell {
    
    @IBOutlet weak var profilePic: UIImageView!
    @IBOutlet weak var numberLbl: UILabel!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var positionLbl: UILabel!
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var weightLbl: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func drawRect(rect: CGRect) {
        self.profilePic.layer.cornerRadius = profilePic.frame.size.width / 2
        self.profilePic.clipsToBounds = true
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(player: Player) {
        profilePic.image = player.profilePic
        numberLbl.text = "#\(player.number)"
        nameLbl.text = player.name
        positionLbl.text = player.position
        heightLbl.text = "\(player.height) m"
        weightLbl.text = "\(player.weight) kg"
    }

}
