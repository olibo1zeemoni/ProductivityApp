//
//  ItemList.swift
//  ProductivityApp Watch App
//
//  Created by Olibo moni on 05/09/2023.
//

import SwiftUI

struct ItemList: View {
    @EnvironmentObject private var model: ItemListModel
    @State var listItem = ListItem("Create a list")
    @State private var showDetail = false
    
    
    var body: some View {
        List { ForEach($model.items) { $item in
            ItemRow(item: $item)
                .strikethrough(item.isComplete, pattern: .solid, color: .red)
            }
            if model.items.isEmpty {
                
                Text("No items to do!").foregroundStyle(.gray)
            }
        }
        .toolbar {
            ToolbarItem(placement: .primaryAction) {
                AddItemLink()
            }
        }
        .navigationTitle("TASKS")
    }
}

#Preview {
    ItemList()
        .environmentObject(ItemListModel())
}
