//
//  String+Money.swift
//  Coffee
//
//  Created by Prudhvi Gadiraju on 8/22/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import Foundation

extension Double {
    func money() -> String {
        return "$\(String(self))"
    }
}
