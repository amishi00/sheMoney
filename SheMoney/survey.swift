

import Foundation
import SwiftUI
struct Survey: View {
    @State private var financials: [Int] = []
    @State private var hsaAdd: String = ""
    @State private var fourAdd: String = ""
    @State private var selectedOptionIndex = 0
    @State private var rothAdd: String = ""
    @State private var age: String = ""
    let options = ["Yes", "No", "Unsure"]
    let options2 = ["Less than 5%", "5-10%", "More than 10%"]
    let lightPink = Color(red: 255/255, green: 182/255, blue: 193/255)
 
    var body: some View {
        ScrollView{
            VStack(spacing: 10) {
                Image("finalRole")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 253.33)
                
                Text("Financial Info")
                    .font(.system(size: 30))
                    .bold()
                    .padding(.top, 20)
                    .padding(.leading,20)
                    .foregroundColor(.pink)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                
                Text("Tell us about your financials!")
                    .font(.system(size: 18))
                    .padding(.bottom, 20)
                    .padding(.leading,20)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                
            }
            Text("")
            HStack{
                Spacer()
                Spacer()
                Text("Enter your age: ")
                    .foregroundColor(.black)
                TextField("Balance", text: $age)
                    .onSubmit{
                        if !(age == "") {
                            if let intValue = Int(age) {
                                financials.append(intValue)
                            }
                        }
                    }
            }
            Text("")
            HStack{
                Spacer()
                Spacer()
                Text("Enter Roth IRA Balance: ")
                    .foregroundColor(.black)
                TextField("Balance", text: $rothAdd)
                    .onSubmit{
                        if !(rothAdd == "") {
                            if let intValue = Int(rothAdd) {
                                financials.append(intValue)
                            }
                        }
                    }
            }
            Text("")
            HStack{
                Spacer()
                Spacer()
                Text("Enter 401K Balance: ")
                    .foregroundColor(.black)
                TextField("Balance", text: $fourAdd)
                    .onSubmit{
                        if !(fourAdd == "") {
                            if let intValue = Int(fourAdd) {
                                financials.append(intValue)
                            }
                        }
                    }
            }
            Text("")
            HStack{
                Spacer()
                Spacer()
                Text("Enter HSA Balance: ")
                    .foregroundColor(.black)
                TextField("Balance", text: $hsaAdd)
                    .onSubmit{
                        if !(hsaAdd == "") {
                            if let intValue = Int(hsaAdd) {
                                financials.append(intValue)
                            }
                        }
                    }
            }
            
            Text("Literacy Quiz")
                .font(.system(size: 20))
                .bold()
                .padding(.top, 20)
                .padding(.leading,20)
                .padding(.bottom, -20)
                .foregroundColor(.pink)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            let q1 = Question(quest: "Do you have an emergency fund with at least three to six months' worth of expenses?",choices: options)
            q1.showQuestion()
            let q2 = Question(quest: "Do you have a separate savings account or investments specifically for retirement outside of your retirement accounts??",choices: options)
            q2.showQuestion()
            let q3 = Question(quest: "If you contribute to a 401(k) or 403(b), what percentage of your salary do you contribute?",choices: options2)
            q3.showQuestion()
            
            
       Spacer()
                
            NavigationLink{ AllSetPageView(age: age, hsaAdd: hsaAdd, fourAdd: fourAdd, rothAdd: rothAdd)}label: {
                    Text("Calculate")
                        .foregroundColor(.black)
                        .padding()
                        .frame(maxWidth: 275,maxHeight: 42)
                        .background(lightPink)
                        .cornerRadius(30)
                    
                    
                }
                .padding()
                
            }
        .padding()
        .navigationBarBackButtonHidden(true)
            
        }
        
    }
    




struct Survey_Previews: PreviewProvider {
    static var previews: some View {
        Survey()
    }
}


struct Question {
    let quest: String
    let choices: [String]
    
    func showQuestion() -> some View {
        let sf = "circle"
        return VStack(alignment: .leading) {
            Text(quest)
                .font(.headline)
                .padding()
            
            ForEach(0..<choices.count, id: \.self) { index in
                Text("   \("⦿") \(choices[index])")
            }
        }
        
    }
    
    
}

