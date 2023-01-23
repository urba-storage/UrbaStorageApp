//
//  SplashScreenView.swift
//  UrbaStorageApp
//
//  Created by Abhay Naik on 1/16/23.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive {
            ContentView()
        } else {
            VStack{
                VStack{
                    Image("HomeScreen")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150)
                    Text("UrbaStorage")
                        .font(.custom("Lato", size: 60))
                        .fontWeight(.bold)
                        .foregroundColor(Color(UIColor(named: "TextColor")!))
                    Image("TagLine")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .offset(y:-50)
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear{
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                    self.isActive = true
                }
            }
        }
       
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
