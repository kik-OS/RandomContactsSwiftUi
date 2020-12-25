//
//  ContactDetail2.swift
//  RandomContacts
//
//  Created by Никита Гвоздиков on 25.12.2020.
//

import SwiftUI

struct PersonCard: View {
    
    let contact: Person
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .frame(width: 350, height: 275)
                .padding()
                .foregroundColor(.white)
            
            VStack {
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding()
                    .foregroundColor(Color(#colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)))
                Divider().frame(width: 310)
                HStack {
                    Image(systemName: "phone.fill")
                        .foregroundColor(.blue)
                    Text(contact.phoneNumber)
                    
                }.padding(.leading, -150)
                Divider().frame(width: 310)
                HStack() {
                    Image(systemName: "mail")
                        .foregroundColor(.blue)
                    Text(contact.email)
                }.padding(.leading, -150)
                Divider().frame(width: 310)
            }
        }
    }
}

struct PersonCard_Previews: PreviewProvider {
    static var previews: some View {
        PersonCard(contact: Person.getContactList()[0])
    }
}
