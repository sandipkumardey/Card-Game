//
//  Item.swift
//  War Card Game
//
//  Created by Sandip Kumar Dey on 17/12/23.
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
