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

    var body: some View {
        ScrollView {
            VStack {
                MenuList(menuItems: coldDrinks, source: self.$source)
                MenuList(menuItems: coldDrinks, source: self.$source)
                MenuList(menuItems: coldDrinks, source: self.$source)
            }
        }
        .padding(.top, 210)
    }
}

struct MenuMultiList_Previews: PreviewProvider {
    static var previews: some View {
        MenuMultiList(source: .constant(.zero))
    }
}
