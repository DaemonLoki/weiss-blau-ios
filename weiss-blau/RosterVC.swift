//
//  FirstViewController.swift
//  weiss-blau
//
//  Created by Stefan Blos on 20.02.16.
//  Copyright © 2016 Stefan Blos. All rights reserved.
//

import UIKit

class RosterVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var players: [Player]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        let roster = Roster()
        players = roster.players
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let player = players[indexPath.row]
        
        if let cell = tableView.dequeueReusableCellWithIdentifier("PlayerCell") as? PlayerCell {
            cell.configureCell(player)
            return cell
        } else {
            return PlayerCell()
        }
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let player = players[indexPath.row]
        
        performSegueWithIdentifier("PlayerDetailVC", sender: player)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "PlayerDetailVC" {
            if let detailsVC = segue.destinationViewController as? PlayerDetailVC {
                if let player = sender as? Player {
                    detailsVC.player = player
                }
            }
        }
    }

}

