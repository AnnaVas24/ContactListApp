//
//  ContentView.swift
//  ContactListApp
//
//  Created by Vasichko Anna on 02.03.2022.
//

import SwiftUI

struct ContentView: View {
    let contactList = Person.getContactList()
    var body: some View {
        TabView {
            HomeScreen(contactList: contactList)
                .tabItem {
                    Label("Contacts", systemImage: "person.3.fill")
                }
            NumbersScreen(contactList: contactList)
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
