//
//  Item.swift
//  Keep Track Of Weight
//
//  Created by Main on 7/10/2024.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
