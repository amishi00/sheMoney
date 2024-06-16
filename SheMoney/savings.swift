//
//  savings.swift
//  SheMoney
//
//  Created by Ashish Kumar on 5/17/24.
//


import Foundation
import SwiftUI
struct Item: Identifiable {
    let id = UUID()
    let name: String
    let brand: String
    let points: Int
}



    
    let columns = [
        GridItem(.flexible(minimum: 150)),
        GridItem(.flexible(minimum: 150))
    ]



struct Savings: View {
    let lightPink = Color(red: 255/255, green: 182/255, blue: 193/255)
    var body: some View {
        
        NavigationView {

            VStack{
                
                Text("Savings")
                    .font(.system(size: 30))
                    .bold()
                    .padding(.top, 20)
                    .padding(.leading,30)
                    .foregroundColor(.pink)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text("Your monthly spending analysis ")
                    .font(.system(size: 18))
                    .italic()
                
                    .padding(.leading,30)
                    .padding(.trailing, 30)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Image("savings")
                    .resizable()
                    .frame(maxWidth: 300,maxHeight: 300)
                
                HStack{
                    Text("Your Points:")
                        .font(.system(size: 24))
                        .bold()
                        .padding(.top, 30)
                        .padding(.leading, 30)
                    
                        
                    Text("3000")
                        .font(.system(size: 24))
                        .bold()
                        .padding(.top, 30)
                   
                        .foregroundColor(.green)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                
                Text("Congrats! You spent $200 less this month. ")
                    .font(.system(size: 18))
             
                    .padding(.leading,30)
                    .padding(.trailing, 30)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                NavigationLink{SavingsItemsView()} label : {
                    Text("Shop")
                }
                .padding()
                .frame(maxWidth: 275,maxHeight: 42)
                
                .background(lightPink)
                .foregroundColor(.black)
                .cornerRadius(30)
                .padding(.horizontal, 40)
                .padding(.top, 20)
                .background(
                    
                )
                Text("Choose where to spend your points")
                    .font(.system(size: 18))
                    .italic()
                    .padding(.leading,30)
                    .padding(.trailing, 30)
                    .frame(maxWidth: .infinity, alignment: .center)
                
                NavigationLink{stocksView()} label : {
                    Text("Stocks")
                }
                .padding()
                .frame(maxWidth: 275,maxHeight: 42)
                
                .background(lightPink)
                .foregroundColor(.black)
                .cornerRadius(30)
                .padding(.horizontal, 40)
                
                .background(
                    
                )
                Text("Choose where to spend your points")
                    .font(.system(size: 18))
                    .italic()
                    .padding(.leading,30)
                    .padding(.trailing, 30)
                    .frame(maxWidth: .infinity, alignment: .center)
               
                
                
                Spacer()
                HStack {
                    Spacer()
                    NavigationLink{
                        Retirement()
                    }label : {
                        Image("Chat")
                            .font(.title)
                            .frame(width: 42.05,height:42.05)
                            .padding()
                    }
                    .padding(.trailing)
                    Spacer()
                    NavigationLink{
                        Savings()
                    }label : {
                        Image("SavingsLogo")
                            .resizable()
                            .font(.title)
                        
                            .frame(width: 42.05,height:42.05)
                            .padding()
                    }
                    .padding(.trailing)
                    Spacer()
                    // Home button
                    NavigationLink{GenderPay()}label: {
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

struct savings_Previews: PreviewProvider {
    static var previews: some View {
        Savings()
    }
}
