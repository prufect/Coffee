//
//  DataStore.swift
//  Coffee
//
//  Created by Prudhvi Gadiraju on 8/22/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import SwiftUI

var menuItems1: [MenuItem] = [
    
    MenuItem(name: "Latte",
             description: "Just the greatest think you will ever put into your mouth",
             image: "Illustration1",
             color: "background3",
             price: 9,
             type: .drink(.cold)),
    
    MenuItem(name: "Americano",
             description: "Just the greatest think you will ever put into your mouth",
             image: "Illustration5",
             color: "background7",
             price: 13,
             type: .drink(.cold)),
    
    MenuItem(name: "Mocha",
             description: "Just the greatest think you will ever put into your mouth",
             image: "Illustration3",
             color: "background10",
             price: 21,
             type: .drink(.cold))
]

var menuItems2: [MenuItem] = [
    
    MenuItem(name: "Matcha",
             description: "Just the greatest think you will ever put into your mouth",
             image: "Illustration2",
             color: "background4",
             price: 9,
             type: .drink(.cold)),
    
    MenuItem(name: "Irish",
             description: "Just the greatest think you will ever put into your mouth",
             image: "Illustration1",
             color: "background5",
             price: 13,
             type: .drink(.cold)),
    
    MenuItem(name: "Chocolate",
             description: "Just the greatest think you will ever put into your mouth",
             image: "Illustration4",
             color: "background6",
             price: 21,
             type: .drink(.cold))
]

var menuItems3: [MenuItem] = [
    
    MenuItem(name: "Cake",
             description: "Just the greatest think you will ever put into your mouth",
             image: "Illustration5",
             color: "background7",
             price: 9,
             type: .drink(.cold)),
    
    MenuItem(name: "Samosa",
             description: "Just the greatest think you will ever put into your mouth",
             image: "Illustration2",
             color: "background9",
             price: 13,
             type: .drink(.cold)),
    
    MenuItem(name: "Sandwhich",
             description: "Just the greatest think you will ever put into your mouth",
             image: "Illustration3",
             color: "background8",
             price: 21,
             type: .drink(.cold))
]

var coldDrinks: [MenuItem] {
    get {
        menuItems1.filter {
            if case .drink(.cold) = $0.type { return true }
            return false
        }
    }
}

var hotDrinks: [MenuItem] {
    get {
        menuItems1.filter {
            if case .drink(.hot) = $0.type { return true }
            return false
        }
    }
}

var foodDrinks: [MenuItem] {
    get {
        menuItems1.filter {
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
    
    CartItem(menuItem: menuItems1[0], quantity: 1),
    CartItem(menuItem: menuItems1[1], quantity: 1),
    CartItem(menuItem: menuItems1[2], quantity: 1)
    
]
