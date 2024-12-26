//
//  DeckProgressChart.swift
//  Hanpuku
//
//  Created by Andrii Novakovskyi on 26.12.2024.
//

import SwiftUI
import Charts

struct DeckProgressChart: View {
  let new: Int
  let learning: Int
  let review: Int

  struct DeckProgressCategory {
    let name: String
    let value: Int
  }

  var body: some View {
    Chart {
      ForEach(progressItems, id: \.name) { item in
        BarMark(x: .value("Count", item.value))
          .foregroundStyle(by: .value("Category", item.name))
      }
    }
    .frame(maxWidth: UIScreen.main.bounds.width * 0.7, maxHeight: 50)
  }

    var progressItems: [DeckProgressCategory] {
    [
      .init(name: "New", value: new),
      .init(name: "Learning", value: learning),
      .init(name: "Review", value: review),
    ]
  }
}

#Preview {
  DeckProgressChart(new: 30, learning: 50, review: 20)
}
