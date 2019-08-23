//
//  TabbedView.swift
//  Coffee
//
//  Created by Prudhvi Gadiraju on 8/22/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import SwiftUI

struct TabbedView: View {
    var body: some View {
        TabView {
            Home()
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("Home")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Menu")
                }
            Menu()
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("Rewards")
                }
        }
    }
}

struct TabbedView_Previews: PreviewProvider {
    static var previews: some View {
        TabbedView()
            .environment(\.colorScheme, .dark)
    }
}
