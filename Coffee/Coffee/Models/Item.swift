//
//  Menu.swift
//  Coffee
//
//  Created by Prudhvi Gadiraju on 8/22/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import Foundation

enum DrinkType {
    case hot
    case cold
}

enum ItemType {
    case drink(_ type: DrinkType)
    case food
}

struct Item: Identifiable {
    var id = UUID()
    var name: String
    var description: String
    var image: String
    var price: Double
    var type: ItemType
}
