//
//  RewardsCardView.swift
//  Coffee
//
//  Created by Prudhvi Gadiraju on 8/23/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import SwiftUI

struct RewardsCardView: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Free Drink")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(Color("accent"))
                        .padding(.top)
                    Text("Rewards Card")
                        .foregroundColor(.white)
                }
                Spacer()
                Image("Logo")
                    .resizable()
                    .frame(width: 30.0, height: 30.0)
            }
            .padding(.horizontal)
            Spacer()
            
            Image("Background")
        }
        .frame(width: 340.0, height: 220.0)
    }
}

struct RewardsCardView_Previews: PreviewProvider {
    static var previews: some View {
        RewardsCardView()
    }
}
