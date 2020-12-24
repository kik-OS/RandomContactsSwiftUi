//
//  ListOfContactsDetail.swift
//  RandomContacts
//
//  Created by Никита Гвоздиков on 24.12.2020.
//

import SwiftUI

struct ListOfContactsDetail: View {
    let contacts: [Person]
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(contacts) { contact in
                    Section(header: Text(contact.fullName)) {
                        HStack {
                            Image(systemName: "phone")
                                .foregroundColor(.blue)
                            Text(contact.phoneNumber)
                        }
                        HStack {
                            Image(systemName: "mail")
                                .foregroundColor(.blue)
                            Text(contact.email)
                        }
                    }
                }
            }.navigationBarTitle("Contacts List")
        }
    }
}

struct ListOfContactsDetail_Previews: PreviewProvider {
    static var previews: some View {
        ListOfContactsDetail(contacts: Person.getContactList())
    }
}
