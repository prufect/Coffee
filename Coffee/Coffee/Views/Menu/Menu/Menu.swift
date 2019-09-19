//
//  Home.swift
//  Coffee
//
//  Created by Prudhvi Gadiraju on 8/22/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import SwiftUI

struct Menu: View {

    @State private var showMenu = false
    @State private var showRewards = false
    @State private var showCart = false
    
    @State private var itemSource: CGRect = .zero
    
    private func shouldAnimate() -> Bool {
        return showRewards || showCart
    }
    
    var body: some View {
        ZStack {
            VStack {
                Text(("\(self.itemSource.origin.x), \(self.itemSource.origin.y), \(self.itemSource.size.width), \(self.itemSource.size.height)"))
                Spacer()
            }
            
            MenuMultiList(source: $itemSource)
                .offset(x: 0, y: self.shouldAnimate() ? 80 : 0)
                .scaleEffect(self.shouldAnimate() ? 0.9 : 1.0)
                .animation(.spring())
            
            VStack {
                MenuHeader(showMenu: $showMenu, showRewards: $showRewards, showCart: $showCart)
                Spacer()
            }
            
            Rewards()
                .cornerRadius(30.0)
                .shadow(radius: 20)
                .animation(.spring(response: 0.6, dampingFraction: 0.7, blendDuration: 0.35))
                .offset(x: 0, y: showRewards ? 80 : UIScreen.main.bounds.height)
            
            Cart()
                .cornerRadius(30.0)
                .shadow(radius: 20)
                .animation(.spring(response: 0.6, dampingFraction: 0.7, blendDuration: 0.35))
                .offset(x: 0, y: showCart ? 80 : UIScreen.main.bounds.height)
            
            SideMenu(showMenu: $showMenu)
            
            if itemSource != .zero {
                FullScreenItemView(item: menuItems.first, source: itemSource)
            }
        }
    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}
