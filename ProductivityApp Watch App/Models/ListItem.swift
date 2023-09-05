//
//  ListItem.swift
//  ProductivityApp Watch App
//
//  Created by Olibo moni on 04/09/2023.
//

import Foundation
import Combine

struct ListItem: Identifiable, Hashable {
    let id = UUID()
    var description: String
    var estimatedWork: Double = 1
    var creationDate: Date = Date()
    var completionDate: Date?
    
    init(_ description: String) {
        self.description = description
    }
    
    var isComplete: Bool {
        get {
            completionDate != nil
        }
        set {
            if newValue {
                guard completionDate == nil else { return }
                completionDate = Date()
            } else {
                completionDate = nil
            }
        }
    }

}



