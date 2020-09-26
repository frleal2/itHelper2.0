//
//  ContactsView.swift
//  itHelper2.0
//
//  Created by Felipe on 2/21/20.
//  Copyright © 2020 division. All rights reserved.
//

import SwiftUI
import CoreData

struct ContactsRow: View{
    
    var cons: Contact
    
    var body: some View{
        VStack{
            Text(cons.firstName)
        }
    }
}

struct ContactsView: View {
    
    @Environment (\.presentationMode) var presentationMode
    @Environment(\.managedObjectContext) var managedObjectContext

    
    @State var showContactForm = false
    
    var body: some View {
        NavigationView{
            VStack{
                List{
                    Text("Test")
                    Text("Test2")
                }
            }
            .navigationBarTitle("Contacts")
            .navigationBarItems(trailing: Button(action: {
                self.showContactForm = true}, label: {
                    Image(systemName: "plus.circle")
                    .resizable()
                        .frame(width: 24, height: 24, alignment: .center)}))
            .sheet(isPresented: $showContactForm){
                ContactForm( orgs: Organization()).environment(\.managedObjectContext, self.managedObjectContext)
            }
        }
        
    }
}


struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
            ContactsView()
    }
}
