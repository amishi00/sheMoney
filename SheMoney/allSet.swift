//
//  allSetPageView.swift
//  CULearn
//
//  Created by Ashish Kumar on 5/2/24.
//

import Foundation
import SwiftUI

struct AllSetPageView: View {
    let lightPink = Color(red: 255/255, green: 182/255, blue: 193/255)
    let age : String
    let hsaAdd: String
    let fourAdd: String
    let rothAdd: String
    
    var body: some View {
        VStack {
            Image("finalAllSet")
                .resizable()
                .scaledToFit()
                .frame(height: 272)
                .padding()
            
            Text("You're all set!")
                .font(.title)
                .padding()
            
            Spacer()
            
            
            
            NavigationLink{
                GenderPay()
            }label:{
                Text("Let's go")
                    .padding()
                    .frame(maxWidth: 275, maxHeight: 42)
                    .background(lightPink)
                    .foregroundColor(.black)
                    .cornerRadius(30)
                    .padding(.horizontal, 40)
                    .padding(.bottom, 50)
            }
            
            
        }
        .padding()
    }
}

struct AllSetView_Previews: PreviewProvider {
    static var previews: some View {
        AllSetPageView(age:"", hsaAdd: "", fourAdd : "", rothAdd: "")
    }
}

