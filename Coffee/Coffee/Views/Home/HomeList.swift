//
//  HomeList.swift
//  Coffee
//
//  Created by Prudhvi Gadiraju on 8/22/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import SwiftUI

struct HomeList: View {
    
    @State var showContent = false

    let MenuCategories = DataStore().menuCategories
    
    var body: some View {
        VStack {
            HStack {
                    VStack(alignment: .leading) {
                        Text("Menu")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                        Text("What would you like?")
                            .foregroundColor(.gray)
                    }
                        Spacer()
                }
            .padding(.leading, 80)
            .padding(.bottom, 30)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 30) {
                    ForEach(MenuCategories) { category in
                        MenuCategoryCard(category: category)
                            .onTapGesture {
                                self.showContent.toggle()
                            }
                            .sheet(isPresented: self.$showContent) { ProfileView() }
                    }
                }
                .padding(.leading, 30)
            }
            
            Spacer()
        }
        .padding(.top, 78)
        
    }
}

struct HomeList_Previews: PreviewProvider {
    static var previews: some View {
        HomeList()
    }
}
