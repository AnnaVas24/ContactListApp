//
//  ContentView.swift
//  ContactListApp
//
//  Created by Vasichko Anna on 02.03.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeScreen()
                .tabItem {
                    Label("Contacts", systemImage: "person.3.fill")
                }
            NumbersScreen()
                .tabItem {
                    Label("Numbers", systemImage: "phone")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
