//
//  DataStore.swift
//  Coffee
//
//  Created by Prudhvi Gadiraju on 8/22/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import SwiftUI

struct DataStore {
    
    var menuItems: [MenuItem] = [
        
        MenuItem(name: "Drink 1",
             description: "Just the greatest think you will ever put into your mouth",
             image: "Illustration1",
             price: 9.99,
             type: .drink(.cold)),
        
        MenuItem(name: "Drink 2",
             description: "Just the greatest think you will ever put into your mouth",
             image: "Illustration1",
             price: 9.99,
             type: .drink(.cold)),
        
        MenuItem(name: "Drink 3",
             description: "Just the greatest think you will ever put into your mouth",
             image: "Illustration1",
             price: 9.99,
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
}
