//
//  MenuStore.swift
//  Coffee
//
//  Created by Prudhvi Gadiraju on 8/22/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import SwiftUI
import Combine

class MenuStore: ObservableObject {
    @Published var items: [Item] = Items
}
