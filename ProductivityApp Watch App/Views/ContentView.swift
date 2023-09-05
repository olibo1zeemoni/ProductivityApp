//
//  ContentView.swift
//  ProductivityApp Watch App
//
//  Created by Olibo moni on 04/09/2023.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            NavigationStack {
                ItemList()
            }
            
            NavigationStack {
                ProductivityChart()
            }
        }
        .tabViewStyle(.page)
    }
}



#Preview("Content View") {
    ContentView()
        .environmentObject(ItemListModel())
}
