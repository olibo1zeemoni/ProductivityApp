//
//  ItemRow.swift
//  ProductivityApp Watch App
//
//  Created by Olibo moni on 05/09/2023.
//

import SwiftUI

struct ItemRow: View {
    @EnvironmentObject private var model: ItemListModel
    @Binding var item: ListItem
    @State private var showDetail = false
    
    var body: some View {
        Button(action: {
            showDetail = true
        }, label: {
            HStack {
                Text(item.description)
                    .strikethrough(item.isComplete)
                
                Spacer()
                
                Image(systemName: "checkmark").opacity(item.isComplete ? 100 : 0)
            }
        })
        .sheet(isPresented: $showDetail) {
            ItemDetail(listItem: $item)
                .toolbar {
                    ToolbarItem(placement: .confirmationAction) {
                        Button("Done") {
                            showDetail = false 
                        }
                    }
                }
        }
    }
}

#Preview {
    ItemRow(item: .constant(ListItem("Item one")))
        .environmentObject(ItemListModel())
}
