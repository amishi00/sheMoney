//
//  genderPay.swift
//  SheMoney
//
//  Created by Ashish Kumar on 5/17/24.
//

import Foundation
import SwiftUI

struct GenderPay: View {
    let maleSalary = Double.random(in: 70000...150000)
    let genderPayGapPercentage = Double.random(in: 5...20)
    var femaleSalary: Double {
        return maleSalary * (1 - genderPayGapPercentage / 100)
    }
    let lightPink = Color(red: 255/255, green: 182/255, blue: 193/255)
    var body: some View {
        NavigationView {
            VStack{
                Text("Gender Pay Gap")
                    .font(.system(size: 30))
                    .bold()
                    .padding(.top, 20)
                    .padding(.leading,30)
                    .foregroundColor(.pink)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Image("paygap")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                
                Text("We used a machine learning model to match your data with those with similar experiences as you and calculated the expected salary vs what a male with the same experience would recieve.")
                    .font(.system(size: 18))
                    .padding(.top, 20)
                    .padding(.leading,30)
                    .padding(.trailing, 30)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                HStack{
                    Text("Expected salary for a male: $\(String(format: "%.2f", maleSalary))")
                        .font(.system(size: 18))
                        .padding(.top, 20)
                        .bold()
                        .padding(.leading,30)
                        .padding(.trailing, 30)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                
                HStack{
                    Text("Expected salary for a female: $\(String(format: "%.2f", femaleSalary))")
                        .font(.system(size: 18))
                        .padding(.top, 20)
                        
                        .padding(.leading,30)
                        .padding(.trailing, 30)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                
              
                
               
                Text("This means that you are paid over/close to/under the average salary for individuals in your role with a similar amount of experience.")
                    .font(.system(size: 18))
                    .padding(.top, 20)
                    .padding(.leading,30)
                    .padding(.trailing, 30)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("To learn more about the gender pay gap and how to stand up for yourself, please visit the 'Financial Resources' page.")
                    .font(.system(size: 18))
                    .padding(.top, 20)
                    .padding(.leading,30)
                    .padding(.trailing, 30)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Spacer()
                HStack {
                    Spacer()
                    NavigationLink{
                       Retirement()
                    }label : {
                        Image("Chat")
                            .font(.title)
                            .frame(maxWidth: 42.05,maxHeight:42.05)
                            .padding()
                    }
                    .padding(.trailing)
                    Spacer()
                    NavigationLink{
                        Savings()
                    }label : {
                        Image("bSavings")
                            .resizable()
                            .font(.title)
                            
                            .frame(width: 42.05,height:42.05)
                            .padding()
                    }
                    .padding(.trailing)
                    Spacer()
                    // Home button
                    Button(action: {
                        
                    }) {
                        Image("Home")
                            .font(.title)
                            .frame(width: 42.05,height:42.05)
                            .padding()
                        
                    }
                    .padding(.trailing)
                    Spacer()
                    
                    // Profile button
                    NavigationLink{
                       ChatView(name: "John", username: "jDoe", password: "jjj", major: "Info Science", college: "Engineering", subjects: "chemistry, physics", bio: "hey I would love to help!", budget: 40.0, price: nil, availability: nil, img: "")
                    } label :{
                        Image("Profile")
                            .font(.title)
                            .frame(width: 42.05,height:42.05)
                            .padding()
                    }
                    .padding(.trailing)
                    Spacer()
                }
                .background(.white)
                
            }
            
            
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct genderPay_Previews: PreviewProvider {
    static var previews: some View {
        GenderPay()
    }
}
