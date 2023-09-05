//
//  ProductivityAppApp.swift
//  ProductivityApp Watch App
//
//  Created by Olibo moni on 04/09/2023.
//

import SwiftUI

@main
struct ProductivityApp_Watch_AppApp: App {
    @StateObject var itemListModel = ItemListModel()

   @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationStack{
                ContentView()
                    .environmentObject(itemListModel)
            }
        }
    }
}
