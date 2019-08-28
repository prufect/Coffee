//
//  SideMenu.swift
//  Coffee
//
//  Created by Prudhvi Gadiraju on 8/23/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import SwiftUI

struct SideMenu: View {
    
    @Binding var showMenu: Bool
    
    var menuItems = [
        SideMenuItem(image: "person.crop.circle", text: "My Account"),
        SideMenuItem(image: "creditcard", text: "Billing"),
        SideMenuItem(image: "clock", text: "Recent"),
        SideMenuItem(image: "arrow.uturn.down", text: "Sign out")
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            ForEach(menuItems) { SideMenuRow(item: $0) }
            Spacer()
        }
        .padding(.top, 20)
        .padding(30)
        .frame(minWidth: 0, maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(30)
        .padding(.trailing, 60)
        .shadow(radius: 30)
        .rotation3DEffect(Angle(degrees: showMenu ? 0 : 45), axis: (x: 0, y: 10, z: 0))
        .animation(.spring())
        .offset(x: showMenu ? 0 : -UIScreen.main.bounds.width)
        .onTapGesture {
            self.showMenu.toggle()
        }
    }
}

struct SideMenu_Previews: PreviewProvider {
    static var previews: some View {
        SideMenu(showMenu: .constant(true))
    }
}
