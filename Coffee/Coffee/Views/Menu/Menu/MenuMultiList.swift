//
//  MenuMultiList.swift
//  Coffee
//
//  Created by Prudhvi Gadiraju on 8/27/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import SwiftUI

struct MenuMultiList: View {
    
    @Binding var source: CGRect
    @Binding var selectedItem: MenuItem?

    var body: some View {
        ScrollView {
            VStack {
                MenuList(menuItems: menuItems1, source: self.$source, selectedItem: self.$selectedItem)
                MenuList(menuItems: menuItems2, source: self.$source, selectedItem: self.$selectedItem)
                MenuList(menuItems: menuItems3, source: self.$source, selectedItem: self.$selectedItem)
            }
        }
        .padding(.top, 210)
    }
}

struct MenuMultiList_Previews: PreviewProvider {
    static var previews: some View {
        MenuMultiList(source: .constant(.zero), selectedItem: .constant(menuItems1[0]))
    }
}
