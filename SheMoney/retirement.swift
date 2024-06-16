//
//  retirement.swift
//  SheMoney
//
//  Created by Ashish Kumar on 5/17/24.
//

import Foundation
import SwiftUI

import Foundation
import SwiftUI

struct FinancialItem {
    let age: Int
    let currentAmount: Int
    // Add more properties as needed
    
    // Example function
    func calculateAmountHSA() -> Double {
        return Double(currentAmount) * pow(1.06, Double(65 - age))
    }
    func calculateAmountRoth() -> Double {
        let currentAmount = 0.7 * Double(currentAmount)
        return Double(currentAmount) * pow(1.06, Double(65 - age))
    }
    func calculateAmountFour() -> Double {
        return 0.7 * (Double(currentAmount) * pow(1.06, Double(65 - age)))
    }
}

struct Retirement: View {
    
    let lightPink = Color(red: 255/255, green: 182/255, blue: 193/255)
    let dummyFinancialItem = FinancialItem(age: 30, currentAmount: 10000)
    let rothFinancialItem = FinancialItem(age: 30, currentAmount: 20000)
    let hsaFinancialItem = FinancialItem(age: 30, currentAmount: 10000)
    var body: some View {
        NavigationView {
            VStack{
                
                Text("Which is better?")
                    .font(.system(size: 30))
                    .bold()
                    .padding(.top, 20)
                    .padding(.leading,30)
                    .foregroundColor(.pink)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text("Here are your calculated retirement savings: ")
                    .font(.system(size: 18))
                    .padding(.top, 20)
                    .padding(.leading,30)
                    .padding(.trailing, 30)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Image("ret")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 350)
                Text("Expected savings from 401(k): $\(String(format: "%.2f", dummyFinancialItem.calculateAmountFour()))")
                    .font(.system(size: 18))
                    .padding(.top, 20)
                    .padding(.leading,30)
                    .padding(.trailing, 30)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text("Expected savings from Roth IRA: $\(String(format: "%.2f", rothFinancialItem.calculateAmountRoth()))")
                    .font(.system(size: 18))
                    .padding(.top, 20)
                    .padding(.leading,30)
                    .padding(.trailing, 30)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text("Expected savings from HSA: $\(String(format: "%.2f", hsaFinancialItem.calculateAmountHSA()))")
                    .font(.system(size: 18))
                    .padding(.top, 20)
                    .padding(.leading,30)
                    .padding(.trailing, 30)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                
                Text("To learn more about the different types of retirement and health benefits plans, please visit the 'Financial Resources' page.")
                    .font(.system(size: 18))
                    .padding(.top, 20)
                    .padding(.leading,30)
                    .padding(.trailing, 30)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Spacer()
                HStack {
                    Spacer()
                    NavigationLink{
                        
                    }label : {
                        Image("orangeChat")
                            .font(.title)
                            .frame(width: 42.05,height:42.05)
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
                    NavigationLink{
                        GenderPay()
                    }label: {
                        Image("blackHome")
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

struct retirement_Previews: PreviewProvider {
    static var previews: some View {
        Retirement()
    }
}
