//
//  AddItemView.swift
//  ProductivityApp Watch App
//
//  Created by Olibo moni on 04/09/2023.
//

import SwiftUI

struct AddItemLink: View {
    @EnvironmentObject var model: ItemListModel
    var body: some View {
        VStack {
            TextFieldLink(prompt: Text("New Item")) {
                Label("Add", systemImage: "plus.circle.fill")
            } onSubmit: { model.items.append(ListItem($0))
                
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

#Preview("Add Item") {
    AddItemLink()
        .environmentObject(ItemListModel())
}
