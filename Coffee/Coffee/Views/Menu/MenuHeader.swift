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
    @Binding var showProfile: Bool
    
    var body: some View {
        HStack {
            MenuButton(show: $showMenu)
            .animation(.spring(response: 0.6, dampingFraction: 0.7, blendDuration: 0.35))
            .offset(x: -30, y: showProfile ? 0 : 80)
            
            MenuTitle()
            .animation(.spring(response: 0.6, dampingFraction: 0.7, blendDuration: 0.35))
                .offset(x: -30, y: showProfile ? 90 : 80)
            .scaleEffect(showProfile ? 0.9 : 1.0)
            
            MenuRight(show: $showProfile)
            .animation(.spring(response: 0.6, dampingFraction: 0.7, blendDuration: 0.35))
            .offset(x: -16, y: showProfile ? 0 : 88)
        }
    }
}

struct MenuHeader_Previews: PreviewProvider {
    static var previews: some View {
        MenuHeader(showMenu: .constant(false), showProfile: .constant(false))
    }
}
