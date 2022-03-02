//
//  NumbersScreen.swift
//  ContactListApp
//
//  Created by Vasichko Anna on 02.03.2022.
//

import SwiftUI

struct NumbersScreen: View {
    var body: some View {
       Image(systemName: "person.circle")
            .resizable()
            .frame(width: 200, height: 200)
    }
}

struct NumbersScreen_Previews: PreviewProvider {
    static var previews: some View {
        NumbersScreen()
    }
}
