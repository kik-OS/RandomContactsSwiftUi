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
        VStack {
            List {
                
                HStack {
                    Spacer()
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 150, height: 150)
                    Spacer()
                }
                HStack {
                    Image(systemName: "phone.fill")
                        .foregroundColor(.blue)
                    Text(contact.phoneNumber)
                }
                HStack {
                    Image(systemName: "mail")
                        .foregroundColor(.blue)
                    Text(contact.email)
                }
                
            }.padding(.top)
        }.navigationBarTitle("\(contact.fullName)")
    }
}

struct ContactDetail_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetail(contact: Person.getContactList()[0])
    }
}
