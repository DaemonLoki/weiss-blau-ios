//
//  PlayerDetailVC.swift
//  weiss-blau
//
//  Created by Stefan Blos on 20.02.16.
//  Copyright © 2016 Stefan Blos. All rights reserved.
//

import UIKit

class PlayerDetailVC: UIViewController {
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var numberLbl: UILabel!
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var weightLbl: UILabel!
    @IBOutlet weak var positionLbl: UILabel!
    @IBOutlet weak var profilePic: UIImageView!
    @IBOutlet weak var ageLbl: UILabel!
    
    var player: Player!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        profilePic.image = player.profilePic
        numberLbl.text = "#\(player.number)"
        nameLbl.text = player.name
        positionLbl.text = player.position
        heightLbl.text = "\(player.height) m"
        weightLbl.text = "\(player.weight) kg"
        ageLbl.text = "\(player.age)"
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
