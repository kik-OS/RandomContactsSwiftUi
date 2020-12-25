//
//  ContentView.swift
//  RandomContacts
//
//  Created by Никита Гвоздиков on 24.12.2020.
//

import SwiftUI

struct ContentView: View {
    
    let contacts = Person.getContactList()
    
    var body: some View {
        TabView {
            ListOfContacts(contacts: contacts)
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Contacts")
                }
            ListOfContactsDetail(contacts: contacts)
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
