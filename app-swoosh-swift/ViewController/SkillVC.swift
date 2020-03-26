//
//  SkillVC.swift
//  app-swoosh-swift
//
//  Created by Shofi on 14/3/20.
//  Copyright © 2020 Shofi. All rights reserved.
//

import UIKit

class SkillVC: UIViewController {
    var player: Player!

    @IBOutlet weak var leagueNameTextView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        leagueNameTextView.text = player.desiredLaegue
    }
    
        @IBAction func unwindFromSkillVC(unwind: UIStoryboardSegue){}



}
