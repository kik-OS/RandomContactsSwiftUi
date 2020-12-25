//
//  ContactDetail.swift
//  RandomContacts
//
//  Created by Никита Гвоздиков on 24.12.2020.
//

import SwiftUI

struct ContactDetail: View {
    
    let contact: Person
    
    var body: some View {
        
        ZStack {
            Color(#colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1))
            VStack {
                PersonCard(contact: contact)
                    .padding()
                Spacer()
            }
        }.navigationBarTitle("\(contact.fullName)")
    }
}

struct ContactDetail_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetail(contact: Person.getContactList()[0])
    }
}
