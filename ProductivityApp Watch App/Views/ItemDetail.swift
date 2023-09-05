//
//  DetailView.swift
//  ProductivityApp Watch App
//
//  Created by Olibo moni on 05/09/2023.
//

import SwiftUI

struct ItemDetail: View {
    @Binding var listItem: ListItem
    
    var body: some View {
        Form {
            Section("List Item") {
                TextField("Item", text: $listItem.description, prompt: Text("List Item"))
            }
            Section("Estimated Work") {
                Stepper(value: $listItem.estimatedWork, in: 0.0...14.0, step: 0.5, format: .number) {
                    Text("\(listItem.estimatedWork, specifier: "%.1f") days")
                }
            }
            Toggle(isOn: $listItem.isComplete) {
                Text("Completed")
            }
            
            ShareLink(item: listItem.description, subject: Text("Please help"), message: Text("I need some help finishing this"), preview: SharePreview(listItem.description))
            
        }
    }
}

#Preview {
    ItemDetail(listItem: .constant(ListItem("Build an app")))
}
