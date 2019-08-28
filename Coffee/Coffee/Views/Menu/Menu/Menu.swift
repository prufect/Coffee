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
    @State private var showProfile = false
    @State private var showCart = false
    
    @State var offsetY: CGFloat = 0.0
    
    var body: some View {
        ZStack {
            GeometryReader { geometry in
                MenuMultiList()
                    .offset(x: 0)
            }
            
            VStack {
                MenuHeader(showMenu: $showMenu, showRewards: $showProfile, showCart: $showCart)
                    .offset(y: offsetY)
                Spacer()
            }
            
            Rewards()
                .cornerRadius(30.0)
                .shadow(radius: 20)
                .animation(.spring(response: 0.6, dampingFraction: 0.7, blendDuration: 0.35))
                .offset(x: 0, y: showProfile ? 80 : UIScreen.main.bounds.height)
            
            SideMenu(showMenu: $showMenu)
        }
    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}
