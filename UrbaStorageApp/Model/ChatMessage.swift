//
//  ChatMessage.swift
//  UrbaStorageApp
//
//  Created by Abhay Naik on 11/11/22.
//

import Foundation
import RealmSwift

@objcMembers class ChatMessage: Object, ObjectKeyIdentifiable {
    dynamic var _id = ObjectId.generate()
    dynamic var room = ""
    dynamic var author = ""
    dynamic var text = ""
    dynamic var timestamp = Date()
    
    convenience init(author: String, text: String, room: String) {
        self.init()
        self.author = author
        self.text = text
        self.room = room
    }
    
    override static func primaryKey() -> String? {
        return "_id"
    }
}


////
////  ContentView.swift
////  UrbaStorageApp
////
////  Created by Abhay Naik on 11/11/22.
////
//
//import SwiftUI
//
//struct ContentView: View {
//    @State private var username = ""
//
//    var body: some View {
//        NavigationView{
//            Group{
//                if app.currentUser == nil {
//                    LoginView(username: $username)
//                } else{
//                    Text("Hello Realm!")
//                        .padding()
//                }
//
//            }
//            .navigationBarTitle(username, displayMode: .inline)
//            .navigationBarItems(trailing: app.currentUser != nil ? Button(action: logout) { Text("Logout") } : nil)
//        }
//    }
//
//    private func logout() {
//        app.currentUser?.logOut() { _ in
//            DispatchQueue.main.async {
//                username = ""
//            }
//        }
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}

