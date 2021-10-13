//
//  CreateNewContact.swift
//  MyContacts
//
//  Created by Channu Chitanalli on 10/10/21.
//

import SwiftUI

struct CreateNewContact: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var company = ""
    var body: some View {
        ZStack(alignment:.top) {
            HStack {
                Button("Cancel") {
                    print("On click of cancel")
                    presentationMode.wrappedValue.dismiss()
                }
                .padding(.leading)
                Text("New Contact")
                    .font(.headline)
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 50)
                    .font(.body)
                Button("Done") {
                    print("On click of Done button")
                }
                .foregroundColor(.gray)
                .font(.headline)
                .padding(.trailing)
            }
            .frame(minWidth: 0, maxHeight: .infinity, alignment: .top)
            
            VStack(alignment: .center) {
                VStack {
                    Image(systemName: "person.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 150, alignment: .center)
                        .background(Color(UIColor.gray))
                        .clipped()
                        .cornerRadius(80)
                    
                    Button("Add Photo") {
                        print("ON Click of add photo.")
                    }
                }
                .frame(minWidth:0, maxWidth: .infinity, maxHeight: 300, alignment: .center)
                Form() {
                    Section {
                        TextField("First Name", text: $firstName)
                        TextField("Last Name", text: $lastName)
                        TextField("Company", text: $company)
                    }
                    Section {
                        HStack {
                            Image(systemName: "plus.circle.fill")
                                .foregroundColor(.green)
                            Button("add Phone") {
                                print("Clicked on Add phone")
                            }
                            .foregroundColor(.black)
                        }
 
                    }
                    Section {
                        HStack {
                            Image(systemName: "plus.circle.fill")
                                .foregroundColor(.green)
                            Button("add email") {
                                print("Clicked on Add email")
                            }
                            .foregroundColor(.black)
                        }
 
                    }
                    Section {
                        HStack {
                            Text("Ringtone")
                            Button("Default") {
                                print("Clicked on ring tone")
                            }
                        }
 
                    }
                    Section {
                        HStack {
                            Text("Text Tone")
                            Button("Default") {
                                print("Clicked on text tone")
                            }
                        }
 
                    }
                    Section {
                        HStack {
                            Image(systemName: "plus.circle.fill")
                                .foregroundColor(.green)
                            Button("add url") {
                                print("Clicked on Add email")
                            }
                            .foregroundColor(.black)
                        }
 
                    }
                    Section {
                        HStack {
                            Image(systemName: "plus.circle.fill")
                                .foregroundColor(.green)
                            Button("add address") {
                                print("Clicked on Add address")
                            }
                            .foregroundColor(.black)
                        }
                        
                    }
                    Section {
                        HStack {
                            Image(systemName: "plus.circle.fill")
                                .foregroundColor(.green)
                            Button("add birthday") {
                                print("Clicked on Add birthday")
                            }
                            .foregroundColor(.black)
                        }
                    }
                    Section {
                        HStack {
                            Image(systemName: "plus.circle.fill")
                                .foregroundColor(.green)
                            Button("add related name") {
                                print("Clicked on Add related name")
                            }
                            .foregroundColor(.black)
                        }
                    }
                    Section {
                        HStack {
                            Image(systemName: "plus.circle.fill")
                                .foregroundColor(.green)
                            Button("add social profile") {
                                print("Clicked on Add social profile")
                            }
                            .foregroundColor(.black)
                        }
                    }
                   
                }
            }
        }
    }
}

struct CreateNewContact_Previews: PreviewProvider {
    static var previews: some View {
        CreateNewContact()
    }
}
