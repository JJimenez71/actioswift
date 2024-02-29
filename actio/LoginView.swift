//
//  LoginView.swift
//  actio
//
//  Created by Jordan Jimenez on 2/27/24.
//

import SwiftUI
import Auth0

struct LoginView: View {
    @State private var loggedIn: Bool = false
    var body: some View {
        VStack{
            LoginButton()
            LogoutButton()
        }
    }
}

struct LoginButton: View {
    var body: some View {
        Button(action: {
            Auth0
                .webAuth()
                .start { result in
                    switch result{
                    case .success(let credentials):
                        print("Obtained credentials: \(credentials)")
                    case .failure(let error):
                        print("Failed with: \(error)")
                    }
                }
        }
        ){
            Text("Login")
        }.buttonStyle(ActioButtonTheme())
    }
}

struct LogoutButton: View {
    var body: some View {
        Button(action: {
            Auth0.webAuth().clearSession { result in
                switch result{
                case .success:
                    print("logged out")
                case .failure(let error):
                    print("Failed to log out: \(error)")
                }
            }
        }){
            Text("Log Out")
        }.buttonStyle(ActioButtonTheme())
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
