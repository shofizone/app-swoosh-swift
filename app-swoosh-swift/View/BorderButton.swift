//
//  BorderButton.swift
//  app-swoosh-swift
//
//  Created by Shofi on 14/3/20.
//  Copyright © 2020 Shofi. All rights reserved.
//

import UIKit

class BorderButton: UIButton {


    override  func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
    }
    

}
