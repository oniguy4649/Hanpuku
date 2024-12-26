//
//  Card.swift
//  Hanpuku
//
//  Created by Andrii Novakovskyi on 26.12.2024.
//

import Foundation
import SwiftData

@Model
final class Card {
    var id = UUID()
    var front: String
    var back: String
    
    init(id: UUID = UUID(), front: String, back: String) {
        self.id = id
        self.front = front
        self.back = back
    }
}
