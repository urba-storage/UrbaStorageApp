//
//  LoginView.swift
//  UrbaStorageApp
//
//  Created by Abhay Naik on 1/16/23.
//

import SwiftUI
import RealmSwift

struct LoginView : View {
    @State var email = ""
    @State var password = ""
    @Binding var loggedin: Bool
    var body : some View{
        NavigationView {
            VStack{
                Image("HomeScreen")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150)
                    .padding(.top)
                VStack{
                    //Email And Password
                    VStack(alignment: .leading, spacing: 8, content: {
                        Text("User Name")
                            .fontWeight(.bold)
                            .foregroundColor(.gray)
                        
                        TextField("email@urbastorage.com", text: self.$email)
                            .font(.system(size: 20, weight: .semibold))
                            .foregroundColor(Color("TextColor"))
                            .padding(.top, 5)
                            .autocapitalization(.none)
                            .keyboardType(.emailAddress)
                        
                        Divider()
                    })
                    .padding(.top, 20)
                    
                    
                    VStack(alignment: .leading, spacing: 8, content: {
                        Text("Password")
                            .fontWeight(.bold)
                            .foregroundColor(.gray)
                        
                        SecureField("********", text: self.$password)
                            .font(.system(size: 20, weight: .semibold))
                            .foregroundColor(Color("TextColor"))
                            .padding(.top, 5)
                        
                        Divider()
                        
                    })
                    .padding(.top, 20)
                    
                    //Forgot Password
                    Button(action: {}, label: {
                        Text("Forgot Password")
                            .fontWeight(.bold)
                            .foregroundColor(Color("TextColor"))
                    })
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .padding(.top, 10)
                    
                    //Login Button
                    Button(action: {
                        login()
                    }, label: {
                        Image("LoginButton")
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(Color("TextColor"))
                            .padding()
                    })
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(.top, 10)
                    
                    //New User Button
                    Button(action: {}, label: {
                        NavigationLink(destination: SignUpView(loggedin: $loggedin)){
                            Image("SignUpButton")
                                .font(.system(size: 24, weight: .bold))
                                .foregroundColor(Color("TextColor"))
                        }
                    })
                    .frame(maxWidth: .infinity, alignment: .center)
                }
                .padding()
            }
        }
    }
    private func login(){
        app.login(credentials: Credentials.emailPassword(email: email, password: password)) { (result) in
            switch result {
            case .failure(let error):
                loggedin = false
                print("Login failed: \(error.localizedDescription)")
            case .success(let user):
                loggedin = true
                print("Successfully logged in as user \(user)")
                                
                
            }
        }
    }
}
