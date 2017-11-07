//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Kuba Zeligowski on 07.11.2017.
//  Copyright © 2017 Kuba Zeligowski. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player: Player!

    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player()
    }
    
    func selectLeague(leagueType: String) {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    @IBAction func btnMenPressed(_ sender: Any) {
        selectLeague(leagueType: "men")
    }
    
    @IBAction func btnWomanPresssed(_ sender: Any) {
        selectLeague(leagueType: "woman")
    }
    
    @IBAction func btnCoedPressed(_ sender: Any) {
        selectLeague(leagueType: "coed")
    }
    
    @IBAction func btnNextPressed(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }

}
