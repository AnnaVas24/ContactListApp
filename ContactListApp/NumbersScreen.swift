//
//  NumbersScreen.swift
//  ContactListApp
//
//  Created by Vasichko Anna on 02.03.2022.
//

import SwiftUI

struct NumbersScreen: View {
    let contactList: [Person]
    
    var body: some View {
        NavigationView{
        List {
            ForEach(contactList, id: \.self) { contact in
                Section(header: Text("\(contact.fullName)")) {
                    Label("\(contact.phoneNumber)", systemImage: "phone")
                    Label("\(contact.email)", systemImage: "tray")
                }
            }
        }.navigationTitle("Contacts")
            
        }
    }
}

struct NumbersScreen_Previews: PreviewProvider {
    static var previews: some View {
        NumbersScreen(contactList: Person.getContactList())
    }
}
