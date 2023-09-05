//
//  StressStepper.swift
//  ProductivityApp Watch App
//
//  Created by Olibo moni on 05/09/2023.
//

import SwiftUI

struct StressStepper: View {
    private let stressLevels = ["😀","😆","🥲","🥸","😎","😱","🥶"]
    @State var stressLevelIndex = 5
    
    
    var body: some View {
        VStack {
            Text("Stress Level")
                .font(.system(.footnote, weight: .bold))
                .foregroundStyle(.blue)
            Stepper(value: $stressLevelIndex, in: 0...stressLevels.count-1) {
                Text(stressLevels[stressLevelIndex])
            }
        }
    }
}

#Preview {
    StressStepper()
}
