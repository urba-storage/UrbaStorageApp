//
//  UrbaStorageAppApp.swift
//  UrbaStorageApp
//
//  Created by Abhay Naik on 11/11/22.
//

import SwiftUI
import RealmSwift

let app = RealmSwift.App(id: "urbastorageapp-nkqky")
@main
struct UrbaStorageAppApp: SwiftUI.App {
    var body: some Scene {
        WindowGroup {
            SplashScreenView()
        }
    }
}
