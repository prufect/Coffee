//
//  MenuTitle.swift
//  Coffee
//
//  Created by Prudhvi Gadiraju on 8/23/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import SwiftUI

struct MenuTitle: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Menu")
                .font(.largeTitle)
                .fontWeight(.heavy)
            Text("What would you like?")
                .foregroundColor(.gray)
        }
    }
}

struct MenuTitle_Previews: PreviewProvider {
    static var previews: some View {
        MenuTitle()
    }
}
