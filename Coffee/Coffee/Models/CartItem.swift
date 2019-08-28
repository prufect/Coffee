//
//  CartItem.swift
//  Coffee
//
//  Created by Prudhvi Gadiraju on 8/27/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import Foundation

class CartItem: Identifiable, ObservableObject {
    var id: UUID = UUID()
    var menuItem: MenuItem
    
    @Published var quantity: Int
    
    init(menuItem: MenuItem, quantity: Int) {
        self.menuItem = menuItem
        self.quantity = quantity
    }
}
