//
//  ContentView.swift
//  MyContacts
//
//  Created by Channu Chitanalli on 04/10/21.
//

import SwiftUI

struct ContentView: View {
    @State private var isPresented = false
    @State private var searchText = ""
    let alphabet = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W", "X","Y", "Z"]

    var body: some View {
        NavigationView {
            VStack {
                SearchNavigationBar(text: $searchText)
                List(contacts) { contact in
                    NavigationLink(destination: DetailView(contact: contact))
                    {
                        ContactRow(contact: contact)
                    }
                }
            }
             .navigationTitle("Contacts")
             .navigationBarItems(trailing: Button(action: {
                print("ON click add button..")
                self.isPresented.toggle()
            }, label: {
                Image(systemName: "plus")
                    .font(.title)
                    .foregroundColor(.blue)
            }))
            //For presenting another view.
            .sheet(isPresented: $isPresented, content: {
                CreateNewContact.init()
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ContactRow: View {
    let contact: Contact
    var body: some View {
        HStack {
            Image(contact.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 60)
                .clipped()
                .cornerRadius(50)
            VStack(alignment:.leading) {
                Text(contact.name)
                    .font(.system(size: 21, weight: .medium, design: .default))
                //                Text(contact.phone)
            }
        }
    }
}
/**
 Button(action: {
     
 }, label: {
     Image(systemName: "plus.circle")
         .font(.largeTitle)
         .foregroundColor(.blue)
 })
 */
