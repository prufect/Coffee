//
//  DataStore.swift
//  Coffee
//
//  Created by Prudhvi Gadiraju on 8/22/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import SwiftUI

var menuItems: [MenuItem] = [
    
    MenuItem(name: "Drink Drink Drink",
             description: "Just the greatest think you will ever put into your mouth",
             image: "Illustration1",
             price: 9,
             type: .drink(.cold)),
    
    MenuItem(name: "Drink 2",
             description: "Just the greatest think you will ever put into your mouth",
             image: "Illustration1",
             price: 13,
             type: .drink(.cold)),
    
    MenuItem(name: "Drink 3",
             description: "Just the greatest think you will ever put into your mouth",
             image: "Illustration1",
             price: 21,
             type: .drink(.cold))
]

var coldDrinks: [MenuItem] {
    get {
        menuItems.filter {
            if case .drink(.cold) = $0.type { return true }
            return false
        }
    }
}

var hotDrinks: [MenuItem] {
    get {
        menuItems.filter {
            if case .drink(.hot) = $0.type { return true }
            return false
        }
    }
}

var foodDrinks: [MenuItem] {
    get {
        menuItems.filter {
            if case .food = $0.type { return true }
            return false
        }
    }
}

var menuCategories: [MenuCategory] = [
    
    MenuCategory(title: "Cold Beverages",
                 image: "Illustration1",
                 color: Color("background3"),
                 shadowColor: Color("backgroundShadow3")),
    
    MenuCategory(title: "Hot Beverages",
                 image: "Illustration2",
                 color: Color("background4"),
                 shadowColor: Color("backgroundShadow4")),
    
    MenuCategory(title: "Health Food",
                 image: "Illustration1",
                 color: Color("background3"),
                 shadowColor: Color("backgroundShadow3"))
]

var cartItems: [CartItem] = [
    
    CartItem(menuItem: menuItems[0], quantity: 1),
    CartItem(menuItem: menuItems[1], quantity: 1),
    CartItem(menuItem: menuItems[2], quantity: 1)
    
]
