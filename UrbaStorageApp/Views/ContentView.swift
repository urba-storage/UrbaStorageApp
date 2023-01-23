//
//  ContentView.swift
//  UrbaStorageApp
//
//  Created by Abhay Naik on 1/23/23.
//

import SwiftUI
import RealmSwift

struct ContentView: View {
    @State var loggedin: Bool = false
    var body: some View {
        VStack{
            if loggedin {
                HomeScreenView(loggedin: $loggedin)
            } else {
                LoginView(loggedin: $loggedin)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//struct Login : View {
//    @State var email = ""
//    @State var password = ""
//    @Binding var loggedin: Bool
//    var body : some View{
//        NavigationView {
//            VStack{
//                Image("HomeScreen")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 150)
//                    .padding(.top)
//                VStack{
//                    //Email And Password
//                    VStack(alignment: .leading, spacing: 8, content: {
//                        Text("User Name")
//                            .fontWeight(.bold)
//                            .foregroundColor(.gray)
//
//                        TextField("email@urbastorage.com", text: self.$email)
//                            .font(.system(size: 20, weight: .semibold))
//                            .foregroundColor(Color("TextColor"))
//                            .padding(.top, 5)
//                            .autocapitalization(.none)
//                            .keyboardType(.emailAddress)
//
//                        Divider()
//                    })
//                    .padding(.top, 20)
//
//
//                    VStack(alignment: .leading, spacing: 8, content: {
//                        Text("Password")
//                            .fontWeight(.bold)
//                            .foregroundColor(.gray)
//
//                        SecureField("********", text: self.$password)
//                            .font(.system(size: 20, weight: .semibold))
//                            .foregroundColor(Color("TextColor"))
//                            .padding(.top, 5)
//
//                        Divider()
//
//                    })
//                    .padding(.top, 20)
//
//                    //Forgot Password
//                    Button(action: {}, label: {
//                        Text("Forgot Password")
//                            .fontWeight(.bold)
//                            .foregroundColor(Color("TextColor"))
//                    })
//                    .frame(maxWidth: .infinity, alignment: .trailing)
//                    .padding(.top, 10)
//
//                    //Login Button
//                    Button(action: {
//                        login()
//                    }, label: {
//                        Image("LoginButton")
//                            .font(.system(size: 24, weight: .bold))
//                            .foregroundColor(Color("TextColor"))
//                            .padding()
//                    })
//                    .frame(maxWidth: .infinity, alignment: .center)
//                    .padding(.top, 10)
//
//                    //New User Button
//                    Button(action: {}, label: {
//                        NavigationLink(destination: SignUp(loggedin: $loggedin)){
//                            Image("SignUpButton")
//                                .font(.system(size: 24, weight: .bold))
//                                .foregroundColor(Color("TextColor"))
//                        }
//                    })
//                    .frame(maxWidth: .infinity, alignment: .center)
//                }
//                .padding()
//            }
//        }
//    }
//    private func login(){
//        app.login(credentials: Credentials.emailPassword(email: email, password: password)) { (result) in
//            switch result {
//            case .failure(let error):
//                print("Login failed: \(error.localizedDescription)")
//                loggedin = false
//            case .success(let user):
//                loggedin = true
//                print("Successfully logged in as user \(user)")
//
//
//            }
//        }
//    }
//}

//struct SignUp: View {
//
//    @State private var name = ""
//    @State private var email = ""
//    @State private var password = ""
//    @Binding var loggedin: Bool
//    var body: some View {
//        NavigationView{
//            VStack{
//                Image("HomeScreen")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 150)
//                    .padding(.top)
//
//                VStack{
//                    VStack(alignment: .leading, spacing: 8, content: {
//                        Text("Sign Up")
//                            .font(.title)
//                            .fontWeight(.bold)
//                            .foregroundColor(Color("TextColor"))
//                            .kerning(1.9)
//                            .frame(maxWidth: .infinity, alignment: .leading)
//
//
//                    })
//                    .padding(.bottom,  20)
//
//                    VStack(alignment: .leading, spacing: 8, content: {
//                        Text("First & Last Name")
//                            .fontWeight(.bold)
//                            .foregroundColor(.gray)
//
//                        TextField("Tom Smith", text: $name)
//                            .font(.system(size: 20, weight: .semibold))
//                            .foregroundColor(Color("TextColor"))
//
//
//                        Divider()
//
//                    })
//                    .padding(.bottom, 20)
//
//                    VStack(alignment: .leading, spacing: 8, content: {
//                        Text("Email")
//                            .fontWeight(.bold)
//                            .foregroundColor(.gray)
//
//                        TextField("tom@urbastorage.com", text: $email)
//                            .font(.system(size: 20, weight: .semibold))
//                            .foregroundColor(Color("TextColor"))
//                            .padding(.top, 5)
//                            .autocapitalization(.none)
//                            .keyboardType(.emailAddress)
//
//                        Divider()
//
//                    })
//                    .padding(.bottom, 20)
//
//                    VStack(alignment: .leading, spacing: 8, content: {
//                        Text("Password")
//                            .fontWeight(.bold)
//                            .foregroundColor(.gray)
//
//                        SecureField("******", text: $password)
//                            .font(.system(size: 20, weight: .semibold))
//                            .foregroundColor(Color("TextColor"))
//                            .padding(.top, 5)
//
//                        Divider()
//
//                    })
//                    .padding(.bottom, 20)
//
//                    //New User Button
//                    Button(action: {
//                        signup()
//                    }, label: {
//                        Image("SignUpButton")
//                            .font(.system(size: 24, weight: .bold))
//                            .foregroundColor(Color("TextColor"))
//                            .padding()
//                    })
//                    .frame(maxWidth: .infinity, alignment: .center)
//                    .padding(.top, 10)
//                }
//                .padding()
//            }
//        }
//    }
//
//    private func login(){
//        app.login(credentials: Credentials.emailPassword(email: email, password: password)) { (result) in
//            switch result {
//            case .failure(let error):
//                print("Login failed: \(error.localizedDescription)")
//                loggedin = false
//            case .success(let user):
//                loggedin = true
//                print("Successfully logged in as user \(user)")
//
//
//            }
//        }
//    }
//
//
//    private func signup(){
//        app.emailPasswordAuth.registerUser(email: email, password: password) {error in
//            if let error = error {
//                print("\(error.localizedDescription)")
//            }
//            else {
//                login()
//            }
//        }
//    }
//
//}

