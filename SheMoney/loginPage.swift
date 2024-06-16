//
//  LoginPageView.swift
//  CULearn
//
//  Created by Amishi Gupta on 5/2/24.
//

import SwiftUI
import Foundation

struct LoginPageView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var isAuthenticated: Bool = false
    let lightPink = Color(red: 255/255, green: 182/255, blue: 193/255)
    var body: some View {
        NavigationView{
            VStack {
                Image("finalLog")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 253.33)
                
                Text("Login")
                    .font(.system(size: 30))
                    .bold()
                    .padding(.top, 20)
                    .padding(.bottom, 10)
                    .padding(.leading,56)
                    .foregroundColor(.pink)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                
                Text("We're happy to have you!")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.system(size: 18))
                    .padding(.leading,56)
                    .padding(.bottom, 18)
                
                HStack{
                    TextField("Username", text: $username)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(maxWidth: 275)
                        .frame(maxHeight: 42)
                }
                
                HStack{
                    SecureField("Password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(maxWidth: 275)
                }
                NavigationLink{GenderPay()} label : {
                    Text("Login")
                }
                .padding()
                .frame(maxWidth: 275,maxHeight: 42)
                
                .background(lightPink)
                .foregroundColor(.black)
                .cornerRadius(30)
                .padding(.horizontal, 40)
                .padding()
                .background(
                    
                )
        
                
                
                Text("Don't have an account?")
                    .font(.caption)
                
                NavigationLink(destination: CreateProfileView()) {
                    Text("Sign Up")
                        .padding()
                        .frame(maxWidth: 275,maxHeight: 42)
                        .background(Color.gray)
                        .foregroundColor(.white)
                        .cornerRadius(30)
                        .padding(.horizontal, 40)
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
    
    
    
    
    
    struct TutorPasswordResponse: Codable {
        let password: String
    }
    
    
    
}

struct LoginPageView_Previews: PreviewProvider {
    static var previews: some View {
        LoginPageView()
    }
}



