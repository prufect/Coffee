//
//  BGCardView.swift
//  Coffee
//
//  Created by Prudhvi Gadiraju on 8/23/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import SwiftUI

struct BGCardView: View {
    var body: some View {
        Image("Illustration1")
        .scaleEffect(1.5)
        .frame(minWidth: 0, maxWidth: .infinity)
        .frame(minHeight: 0, maxHeight: .infinity)
        .background(Color("background3"))
        .edgesIgnoringSafeArea(.all)
    }
}

struct BGCardView_Previews: PreviewProvider {
    static var previews: some View {
        BGCardView()
    }
}
