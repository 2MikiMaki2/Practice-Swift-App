//
//  ContentView.swift
//  Test App
//
//  Created by Maksim on 10/13/23.
//

import SwiftUI



struct ContentView: View {

    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Chicken Clicker") {ChickenClicker()}
                NavigationLink("Cookie Clicker") {CookieClicker()}
                NavigationLink("Text Appendecizer") {TextAppendecizer()}
            }.font(.title2)
            .navigationTitle("Modes")
        }
    }
}

#Preview {
    ContentView()
}
