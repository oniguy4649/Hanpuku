//
//  DecksList.swift
//  Hanpuku
//
//  Created by Andrii Novakovskyi on 26.12.2024.
//

import SwiftUI
import SwiftData

struct DecksList: View {
    @Environment(\.modelContext) private var modelContext
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    VStack {
                        HStack {
                            Text("Programming").bold()
                            Spacer()
                            Image(systemName: "chevron.right")
                            .foregroundStyle(.secondary)
                        }
                        HStack {
                            Button("Study", systemImage: "play.fill", action: {})
                            .buttonStyle(.bordered)
                            .cornerRadius(10)

                            Button("Add card", systemImage: "plus", action: {})
                            .buttonStyle(.bordered)
                            .cornerRadius(10)
                        }
                    }
                }
            }
            .navigationTitle("Decks")
        }
    }
}

#Preview {
    DecksList()
}
