//
//  HomeScreen.swift
//  ContactListApp
//
//  Created by Vasichko Anna on 02.03.2022.
//

import SwiftUI

struct HomeScreen: View {
    let contactList: [Person]
    
    var body: some View {
        NavigationView{
            ZStack{
                List(contactList, id: \.self) { contact in
                    NavigationLink {
                        DetailsView(contact: contact)
                    } label: {
                        Text("\(contact.fullName)")
                    }
                    
                }
                
            } .navigationTitle("Contacts")
                .listStyle(.plain)
        }
    }
    
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen(contactList: Person.getContactList())
    }
}
