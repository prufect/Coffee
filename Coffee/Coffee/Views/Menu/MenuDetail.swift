//
//  MenuDetail.swift
//  Coffee
//
//  Created by Prudhvi Gadiraju on 8/22/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import SwiftUI

struct MenuDetail: View {
    
    var item: Item = Items.first!
    
    var body: some View {
        VStack {
            Text(item.name)
                .font(.largeTitle)
                .fontWeight(.heavy)
            Image(item.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 200)
            Spacer()
            Text(item.description)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .lineLimit(nil)
        }
        .padding(30)
    }
}

struct MenuDetail_Previews: PreviewProvider {
    static var previews: some View {
        MenuDetail()
    }
}
