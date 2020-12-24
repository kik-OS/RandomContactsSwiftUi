//
//  ListOfContacts.swift
//  RandomContacts
//
//  Created by Никита Гвоздиков on 24.12.2020.
//

import SwiftUI

struct ListOfContacts: View {
    
    let contacts: [Person]
    
    var body: some View {
        
        NavigationView {
            List(contacts) { contact in
                NavigationLink(destination: ContactDetail(contact: contact)) {
                    Text(contact.fullName)
                }
            }.navigationBarTitle("Contacts List")
        }
    }
}

struct ListOfContacts_Previews: PreviewProvider {
    static var previews: some View {
        ListOfContacts(contacts: Person.getContactList())
    }
}
