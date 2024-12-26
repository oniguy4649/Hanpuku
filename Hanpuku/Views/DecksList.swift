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
                    NavigationLink(destination: DeckDetail()) {
                        VStack {
                            HStack {
                                Text("Programming")
                                    .bold()
                                    .font(.title2)
                                Spacer()
                            }
                            HStack {
                                Button("Study", systemImage: "play.fill", action: {})
                                .buttonStyle(.bordered)
                                .controlSize(.large)
                                .cornerRadius(30)
                                
                                Button("Add card", systemImage: "plus", action: {})
                                .buttonStyle(.bordered)
                                .controlSize(.large)
                                .cornerRadius(30)
                            }
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
