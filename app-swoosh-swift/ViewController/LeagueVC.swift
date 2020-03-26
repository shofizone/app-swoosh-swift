//
//  LeagueVC.swift
//  app-swoosh-swift
//
//  Created by Shofi on 14/3/20.
//  Copyright © 2020 Shofi. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    var player:Player!
    
    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    
    @IBAction func onMensTapped(_ sender: Any) {
           selectLeadueType(leagueType:"mens")
     
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
           selectLeadueType(leagueType:"womens")
    }
    
    
    @IBAction func onCoEdTapped(_ sender: Any) {
        selectLeadueType(leagueType:"code")
    }
    
    
    private func selectLeadueType(leagueType:String){
        player.desiredLaegue = leagueType
           nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC{
            skillVC.player = player
        }
    }
}
