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
