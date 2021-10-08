//
//  DetailView.swift
//  MyContacts
//
//  Created by Channu Chitanalli on 04/10/21.
//

import SwiftUI

struct DetailView: View {
    let contact:Contact
    @State private var notes = ""
    @State var blockActinSheet = false
    
    var actionSheet: ActionSheet {
        ActionSheet(title: Text(""), message: Text("You will not receive phone calls, messages or FaceTime from people on the block List"), buttons: [
            .default(Text("Block Contact")),
            .destructive(Text("Cancel"))
            
        ])
    }
    
    var body: some View {
        NavigationView {
            VStack(alignment:.center) {
                Image("BASAVA")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 80, height: 80)
                    .clipped()
                    .cornerRadius(150)
                    .shadow(radius: 3)
                 Text("Basava Prasad Patil")
                    .font(.title)
                    .fontWeight(.medium)
                
                 HStack(alignment:.center) {
                    Button("Message", action: {
                        print("Message tapped.")
                    })
                    
////                    Group {
//                        Button(action: {
//                            print("Message")
//                        }, label: {
//                            VStack(spacing:10) {
//                            Image(systemName: "message.fill")
//                            Text("message")
//                                .padding(.horizontal,3).lineLimit(1).minimumScaleFactor(0.4)
//                                .frame(minWidth: 0,
//                                       maxWidth: .infinity,
//                                       minHeight: 0,
//                                       maxHeight: 0)
//                        }
//                        })
//                        .padding()
//                        .foregroundColor(.blue)
//                        .background(Color(UIColor.white))
//                        .cornerRadius(10)
////                        .buttonStyle(SampleStyle(imageName: "message.fill", title: "message"))
//                        Button(action: {
//                                print("Call")
//                        }, label: { })
////                        .buttonStyle(SampleStyle(imageName: "phone.fill", title: "call"))
//                        Button(action: {print("Video")}, label: {})
////                        .buttonStyle(SampleStyle(imageName: "video.fill", title: "Video"))
//                        Button(action: { print("mail")}, label: {})
////                            .buttonStyle(SampleStyle(imageName: "mail.fill", title: "mail"))
//                            .buttonStyle(BorderlessButtonStyle())
////                    }
                }
//                .padding([.leading, .trailing],10)
                //Form is to grouping the data
                Form() {
                   
                    //Section: Use to organise content into separate sections.
                    Section {
                        VStack(alignment:.leading) {
                            Text("Phone")
                            Text("8801307518")
                                .foregroundColor(.blue)
                                .font(.callout)
                        }
                    }
                    Section {
                        VStack(alignment:.leading) {
                            Text("Notes")
                            TextEditor(text: $notes)
                        }
                    }
                    Section {
                        Button(action: {
                            print("Send Message")
                        }, label: {
                            Text("Send Message")
                        })
                        Button(action: {
                            print("Share Contact")
                        }, label: {
                            Text("Share Contact")
                        })
                        Button(action: {
                            print("Add to Favourites")
                        }, label: {
                            Text("Add to Favourites")
                        })
                    }
                    Section {
                        Button(action: {
                            print("Add to Emergency Contacts")
                        }, label: {
                            Text("Add to Emergency Contacts")
                        })
                    }
                    Section {
                        Button(action: {
                            print("Share My Location")
                        }, label: {
                            Text("Share My Location")
                        })
                    }
                    Section {
                        Button(action: {
                            print("Block this Caller")
                            blockActinSheet.toggle()
                        }, label: {
                            Text("Block this Caller")
                        }).foregroundColor(.red)
                        .actionSheet(isPresented: $blockActinSheet, content: {
                            self.actionSheet
                        })
                    }

                }
            }
            .background(Color(UIColor.systemGroupedBackground))
            .padding(.top, 35)
            .edgesIgnoringSafeArea(.top)
        }
        .navigationBarItems(trailing: EditButton())
    }

}

//struct SampleStyle: ButtonStyle {
//    var imageName: String
//    var title: String
//
//    func makeBody(configuration: Self.Configuration) -> some View {
//        configuration.label
//        VStack(spacing:10) {
//            Image(systemName: imageName)
//            Text(title)
//                .padding(.horizontal,3).lineLimit(1).minimumScaleFactor(0.4)
//                .frame(minWidth: 0,
//                       maxWidth: .infinity,
//                       minHeight: 0,
//                       maxHeight: 0)
//        }
//        .padding()
//        .foregroundColor(.blue)
//        .background(Color(UIColor.white))
//        .cornerRadius(10)
//
//    }
//}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(contact: contacts[0])
    }
}
