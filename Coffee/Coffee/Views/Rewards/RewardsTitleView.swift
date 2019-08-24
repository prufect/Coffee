//
//  RewardsTitleView.swift
//  Coffee
//
//  Created by Prudhvi Gadiraju on 8/23/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import SwiftUI

struct RewardsTitleView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Rewards")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                Spacer()
            }
            .padding(.leading)
            Image("Illustration5")
            Spacer()
        }
    }
}


struct RewardsTitleView_Previews: PreviewProvider {
    static var previews: some View {
        RewardsTitleView()
    }
}
