//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Kuba Zeligowski on 24.10.2017.
//  Copyright © 2017 Kuba Zeligowski. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
