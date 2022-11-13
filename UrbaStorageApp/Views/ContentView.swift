//
//  ContentView.swift
//  UrbaStorageApp
//
//  Created by Abhay Naik on 11/11/22.
//

import SwiftUI

struct ContentView: View {
    @State private var username = ""
    
    var body: some View {
        NavigationView {
            Group {
                if app.currentUser == nil {
                    LoginView(username: $username)
                } else {
                    ChatRoomView(username: username)
                }
            }
            .navigationBarTitle(username, displayMode: .inline)
            .navigationBarItems(trailing: app.currentUser != nil ? Button(action: logout) { Text("Logout")} : nil)
            
        }
    }
    
    private func logout() {
        app.currentUser?.logOut() { _ in
            DispatchQueue.main.async {
                username = ""
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
