//
//  ContentView.swift
//  SheMoney
//
//  Created by Ashish Kumar on 5/16/24.
//

import SwiftUI

struct ContentView: View {
    let lightPink = Color(red: 255/255, green: 182/255, blue: 193/255)
    var body: some View {
        NavigationView {
            VStack{
                Image("her")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 292)
                    .padding(.bottom, -20)
                HStack{
                    Text("$")
                        .bold()
                        .foregroundStyle(.green)
                        .font(.system(size: 60))
                    
                        .padding(.trailing, -10)
                    Text("heMoney")
                        .bold()
                        .font(.system(size: 50))
                    
                }
                
                NavigationLink{LoginPageView()}label: {
                    Text("Get Started!")
                        .foregroundColor(.black)
                    
                        .font(.system(size: 20))
                    
                        .frame(width: 275, height: 50)
                        .background(lightPink)
                        .cornerRadius(30)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

