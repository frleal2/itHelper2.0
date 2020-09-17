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
        VStack{
            List{
                Text("Test")
                Text("Test2")
            }
        }
    }
}


struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
            ContactsView()
    }
}
