//
//  ContentView.swift
//  Hanpuku
//
//  Created by Andrii Novakovskyi on 26.12.2024.
//

import SwiftUI
import SwiftData

struct MainView: View {
    @Environment(\.modelContext) private var modelContext

    var body: some View {
        VStack {
            Text("Hello World")
        }
    }
}

#Preview {
    MainView()
}
