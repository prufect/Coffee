//
//  Menu.swift
//  Coffee
//
//  Created by Prudhvi Gadiraju on 8/22/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import Foundation

enum MenuItemDrinkType {
    case hot
    case cold
}

enum MenuItemType {
    case drink(_ type: MenuItemDrinkType)
    case food
}

struct MenuItem: Identifiable {
    var id = UUID()
    var name: String
    var description: String
    var image: String
    var color: String
    var price: Double
    var type: MenuItemType
}
