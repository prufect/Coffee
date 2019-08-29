//
//  MenuButtons.swift
//  Coffee
//
//  Created by Prudhvi Gadiraju on 8/23/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import SwiftUI

struct MenuHeader: View {
    
    @Binding var showMenu: Bool
    @Binding var showRewards: Bool
    @Binding var showCart: Bool
    
    private func animate() -> Bool {
        return showRewards || showCart
    }
    
    var body: some View {
        HStack {
            SideMenuButton(show: $showMenu)
            .animation(.spring(response: 0.6, dampingFraction: 0.7, blendDuration: 0.35))
            .offset(x: -30, y: animate() ? 0 : 80)
            
            MenuTitle()
            .animation(.spring(response: 0.6, dampingFraction: 0.7, blendDuration: 0.35))
                .offset(x: -30, y: showRewards ? 90 : 80)
            .scaleEffect(animate() ? 0.9 : 1.0)
            
            MenuOptions(showRewards: $showRewards, showCart: $showCart)
            .animation(.spring(response: 0.6, dampingFraction: 0.7, blendDuration: 0.35))
            .offset(x: -16, y: animate() ? 0 : 88)
        }
    }
}

struct MenuHeader_Previews: PreviewProvider {
    static var previews: some View {
        MenuHeader(showMenu: .constant(false), showRewards: .constant(false), showCart: .constant(false))
    }
}
