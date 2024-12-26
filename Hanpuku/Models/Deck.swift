//
//  Deck.swift
//  Hanpuku
//
//  Created by Andrii Novakovskyi on 26.12.2024.
//

import Foundation
import SwiftData

@Model
final class Deck {
    var id = UUID()
    var name: String
    
    @Relationship(deleteRule: .cascade) var cards: [Card] = []
    var cardCount: Int {
        cards.count
    }
    
    init(id: UUID = UUID(), name: String) {
        self.id = id
        self.name = name
    }
}
