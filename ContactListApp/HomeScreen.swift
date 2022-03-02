//
//  HomeScreen.swift
//  ContactListApp
//
//  Created by Vasichko Anna on 02.03.2022.
//

import SwiftUI

struct HomeScreen: View {
    let contactList = Person.getContactList()
    
    var body: some View {
        NavigationView{
            ZStack{
        List(contactList, id: \.self) { contact in
            Text("\(contact.name) \(contact.surname)")
        }
            } .navigationTitle("Contacts")
        }
    }
    
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
