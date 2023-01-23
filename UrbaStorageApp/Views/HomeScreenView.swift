//
//  HomeScreenView.swift
//  UrbaStorageApp
//
//  Created by Abhay Naik on 1/20/23.
//

import SwiftUI

struct HomeScreenView: View {
    @Binding var loggedin: Bool
    var body: some View {
        NavigationView(){
            VStack {
                Text("Authorized.... You are in!")
                    .font(.largeTitle)
            }
            .padding()
            .navigationTitle("My Secure App")
        }
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView(loggedin: .constant(true))
    }
}
