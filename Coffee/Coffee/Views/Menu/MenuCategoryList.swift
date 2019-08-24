//
//  HomeList.swift
//  Coffee
//
//  Created by Prudhvi Gadiraju on 8/22/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import SwiftUI

struct MenuCategoryList: View {
    
    @State var showContent = false

    let MenuCategories = DataStore().menuCategories
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 30) {
                    ForEach(MenuCategories) { category in
                        MenuCategoryCard(category: category)
                    }
                }
                .padding(.leading, 30)
            }
            Spacer()
        }
        .padding(.top, 78)
        
    }
}

struct MenuCategoryList_Previews: PreviewProvider {
    static var previews: some View {
        MenuCategoryList()
    }
}
