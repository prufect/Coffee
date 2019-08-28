//
//  MenuList.swift
//  Coffee
//
//  Created by Prudhvi Gadiraju on 8/22/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import SwiftUI

struct MenuList: View {
        
    let menuItems: [MenuItem]!
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 30) {
                    ForEach(menuItems) { item in
                        Button(action: {
                            // To Be Implemented
                        }) {
                            MenuItemView(item: item)
                                .offset(x: 30)
                        }
                    }
                }
            }
        }
    }
}

struct MenuList_Previews: PreviewProvider {
    static var previews: some View {
        MenuList(menuItems: DataStore().coldDrinks)
    }
}
