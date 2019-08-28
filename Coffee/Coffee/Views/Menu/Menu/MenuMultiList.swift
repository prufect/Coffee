//
//  MenuMultiList.swift
//  Coffee
//
//  Created by Prudhvi Gadiraju on 8/27/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import SwiftUI

struct MenuMultiList: View {
    var body: some View {
        ScrollView {
            VStack {
                MenuList(menuItems: DataStore().coldDrinks)
                MenuList(menuItems: DataStore().coldDrinks)
                MenuList(menuItems: DataStore().coldDrinks)
            }
        }
        .padding(.top, 210)
    }
}

struct MenuMultiList_Previews: PreviewProvider {
    static var previews: some View {
        MenuMultiList()
    }
}
