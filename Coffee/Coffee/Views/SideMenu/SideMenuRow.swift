//
//  SideMenuRow.swift
//  Coffee
//
//  Created by Prudhvi Gadiraju on 8/27/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import SwiftUI

struct SideMenuRow: View {
    
    var item = SideMenuItem(image: "creditcard", text: "hello world")
    
    var body: some View {
        HStack {
            Image(systemName: item.image)
                .imageScale(.large)
                .foregroundColor(Color("icons"))
                .frame(width: 32, height: 32)
            Text(item.text)
                .font(.headline)
            Spacer()
        }
    }
}

struct SideMenuRow_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuRow()
    }
}
