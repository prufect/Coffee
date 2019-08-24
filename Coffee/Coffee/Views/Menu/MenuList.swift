//
//  Menu.swift
//  Coffee
//
//  Created by Prudhvi Gadiraju on 8/22/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import SwiftUI

struct MenuList: View {
    
    var title = "Cold Bevarages"
    @ObservedObject var store = MenuStore()
    
    func addMenuItem() {
        store.items.append(Item(name: "New Drink", description: "More goodyness for your mouth", image: "Certificate2", price: 3.99, type: .drink(.cold)))
    }
    
    func move(from source: IndexSet, to destination: Int) {
        store.items.swapAt(source.first!, destination)
    }
    
    var body: some View {
        NavigationView {
            List() {
                ForEach(self.store.items) { item in
                    NavigationLink(destination: MenuDetail(item: item)) {
                        HStack(alignment: .top) {
                            Image(item.image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 80, height: 80)
                                .background(Color("background"))
                                .cornerRadius(20)
                                .padding(.trailing, 4)

                            VStack(alignment: .leading) {
                                Text(item.name)
                                    .font(.headline)
                                Text(item.description)
                                    .font(.subheadline)
                                    .frame(height: 50)
                                    .lineSpacing(4)
                                Text(item.price.money())
                                    .font(.caption)
                                    .fontWeight(.bold)
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                }
                .onDelete { index in
                    self.store.items.remove(at: index.first!)
                }
                .onMove(perform: move)
            }
            .navigationBarTitle(title)
            .navigationBarItems(
                leading: Button(action: addMenuItem) { Image(systemName: "plus") },
                trailing: EditButton()
            )
        }
    }
}

struct MenuList_Previews: PreviewProvider {
    static var previews: some View {
        MenuList()
    }
}
