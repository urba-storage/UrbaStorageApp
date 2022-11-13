//
//  ChatRoomView.swift
//  UrbaStorageApp
//
//  Created by Abhay Naik on 11/11/22.
//

import SwiftUI

struct ChatRoomView: View {
    let username: String
    let rooms = ["Atlas", "Realm", "Charts", "Search", "Server"]
    var body: some View {
        List {
            ForEach(rooms, id: \.self) { room in
                NavigationLink(destination: ChatsView(username: username, room: room)
                    .environment(\.realmConfiguration, app.currentUser!.configuration(partitionValue: room))
                ) {
                    Text(room)
                }
            }
        }
    }
}

//struct ChatRoomView_Previews: PreviewProvider {
//    static var previews: some View {
//        ChatRoomView()
//    }
//}
