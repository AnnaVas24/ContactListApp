//
//  DetailsView.swift
//  ContactListApp
//
//  Created by Vasichko Anna on 02.03.2022.
//

import SwiftUI

struct DetailsView: View {
    let contact: Person
    
    var body: some View {
        List {
            HStack{
                Spacer()
            Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 130, height: 130)
              Spacer()
            }
                Label("\(contact.phoneNumber)", systemImage: "phone")
                Label("\(contact.email)", systemImage: "tray")
                
            
        }.listStyle(.plain)
        .navigationTitle("\(contact.fullName)")
        
    }
}


struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(contact: Person.getContact())
    }
}
