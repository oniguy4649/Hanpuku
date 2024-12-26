//
//  DeckDetail.swift
//  Hanpuku
//
//  Created by Andrii Novakovskyi on 27.12.2024.
//

import SwiftUI

struct DeckDetail: View {
    var body: some View {
        Text("Programming deck stats")
        DeckProgressChart(new: 30, learning: 50, review: 20)
    }
}

#Preview {
    DeckDetail()
}
