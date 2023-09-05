//
//  DateFormatStyle.swift
//  ProductivityApp Watch App
//
//  Created by Olibo moni on 05/09/2023.
//

import Foundation

struct DateFormatStyle: FormatStyle {
    
    enum CodingKeys: CodingKey {
        case dateFormatTemplate
    }
    
    private var dateFormatTemplate: String
    private var formatter: DateFormatter
    
    init(dateFormatTemplate: String) {
        self.dateFormatTemplate = dateFormatTemplate
        formatter = DateFormatter()
        formatter.locale = Locale.autoupdatingCurrent
        formatter.setLocalizedDateFormatFromTemplate(dateFormatTemplate)
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        dateFormatTemplate = try container.decode(String.self, forKey: .dateFormatTemplate)
        formatter = DateFormatter()
        formatter.setLocalizedDateFormatFromTemplate(dateFormatTemplate)
    }

    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(dateFormatTemplate, forKey: .dateFormatTemplate)
    }
    
    func format(_ value: Date) -> String {
        formatter.string(from: value)
    }
}
