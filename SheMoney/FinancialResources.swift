////
////  genderPay.swift
////  SheMoney
////
////  Created by Ashish Kumar on 5/17/24.
////
//
//import Foundation
//import SwiftUI
//
//struct Resources: View {
//    let lightPink = Color(red: 255/255, green: 182/255, blue: 193/255)
//    var body: some View {
//        ScrollView {
//            VStack{
//                Text("Financial Resources")
//                    .font(.system(size: 30))
//                    .bold()
//                    .padding(.top, 20)
//                    .padding(.leading,56)
//                    .foregroundColor(.pink)
//                    .frame(maxWidth: .infinity, alignment: .leading)
//                Text("401(k)")
//                    .bold()
//                    .font(.system(size: 24))
//                    .padding(.top, 20)
//                    .padding(.leading,56)
//                    .padding(.trailing, 56)
//                    .frame(maxWidth: .infinity, alignment: .leading)
//                
//                Text("A 401(k) is an employer-sponsored retirement savings plan where employees can contribute a portion of their pre-tax income toward their retirement savings. Contributions to a 401(k) reduce taxable income for the year, allowing for potential tax savings. The funds in a 401(k) account can be invested in a variety of options such as stocks, bonds, mutual funds, and more, allowing for potential growth over time. Many employers offer matching contributions, effectively providing free money towards employees' retirement savings. While contributions and investment earnings grow tax-deferred until withdrawal, withdrawals are typically subject to income tax, and early withdrawals before age 59½ may incur penalties, though certain exceptions exist for specific circumstances like disability or early retirement. Overall, 401(k) plans serve as a valuable tool for long-term retirement planning and wealth accumulation for employees. ")
//                    .font(.system(size: 18))
//                    .padding(.top, 20)
//                    .padding(.leading,56)
//                    .padding(.trailing, 56)
//                    .frame(maxWidth: .infinity, alignment: .leading)
//                
//                
//                Text("Roth IRA")
//                    .font(.system(size: 24))
//                    .padding(.top, 20)
//                    .bold()
//                    .padding(.leading,56)
//                    .padding(.trailing, 56)
//                    .frame(maxWidth: .infinity, alignment: .leading)
//                
//                Text("A Roth IRA is a type of individual retirement account where contributions are made with after-tax dollars, meaning you don't receive a tax deduction for your contributions. However, one of the key benefits of a Roth IRA is that qualified withdrawals in retirement, including both contributions and earnings, are tax-free. This makes it an attractive option for individuals who anticipate being in a higher tax bracket in retirement or who want to diversify their tax liability. Additionally, Roth IRAs offer flexibility in investment choices and allow penalty-free withdrawals of contributions (but not earnings) at any time, making them a versatile tool for long-term savings and retirement planning.")
//                    .font(.system(size: 18))
//                    .padding(.top, 20)
//                    .padding(.leading,56)
//                    .padding(.trailing, 56)
//                    .frame(maxWidth: .infinity, alignment: .leading)
//                HStack {
//                    Spacer()
//                    NavigationLink{
//                        
//                    }label : {
//                        Image("Chat")
//                            .font(.title)
//                            .frame(width: 42.05,height:42.05)
//                            .padding()
//                    }
//                    .padding(.trailing)
//                    Spacer()
//                    // Home button
//                    Button(action: {
//                        
//                    }) {
//                        Image("Home")
//                            .font(.title)
//                            .frame(width: 42.05,height:42.05)
//                            .padding()
//                        
//                    }
//                    .padding(.trailing)
//                    Spacer()
//                    
//                    // Profile button
//                    NavigationLink{
//                        
//                    } label :{
//                        Image("")
//                            .font(.title)
//                            .frame(width: 42.05,height:42.05)
//                            .padding()
//                    }
//                    .padding(.trailing)
//                }
//                .background(.white)
//            }
//            
//        }
//    }
//}
//
//struct resources_Previews: PreviewProvider {
//    static var previews: some View {
//        Resources()
//    }
//}
import SwiftUI
import Foundation

struct Chat: Identifiable {
    let id = UUID()
    let tutorName: String
    let tutorImage: String
    let lastMessage: String
}

struct ChatCell: View {
    let chat: Chat
    let placeholderImg = "https://i.pinimg.com/originals/87/d0/98/87d098d886d3fab2af463c09b65d7b44.jpg"
    var body: some View {
        HStack(spacing: 10) {
    
            
            
            
            VStack(alignment: .leading, spacing: 5) {
                Text(chat.tutorName)
                                    .bold()
                                    .font(.system(size: 24))
                                    .padding(.top, 20)
                                    .padding(.leading)
                                    .padding(.trailing, 56)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                Text(chat.lastMessage)
                    .font(.subheadline)
                    .lineLimit(3)
                    .padding(.leading)
                    .foregroundColor(.gray)
            }
            Spacer()
        }
        .padding(10)
    }
}

struct ChatView: View {
    let name: String
    let username: String
    let password: String
    let major: String
    let college: String
    let subjects: String
    let bio: String
    let budget: Float?
    let price : Float?
    let availability : String?
    let img : String?
    let chats: [Chat] = [
        Chat(tutorName: "401(k)", tutorImage: "https://static.wikia.nocookie.net/p__/images/f/f9/MyMelody.png/revision/latest?cb=20210824094453&path-prefix=protagonist", lastMessage: "A 401(k) is an employer-sponsored retirement savings plan where employees can contribute a portion of their pre-tax income toward their retirement savings. Contributions to a 401(k) reduce taxable income for the year, allowing for potential tax savings. The funds in a 401(k) account can be invested in a variety of options such as stocks, bonds, mutual funds, and more, allowing for potential growth over time. Many employers offer matching contributions, effectively providing free money towards employees' retirement savings. While contributions and investment earnings grow tax-deferred until withdrawal, withdrawals are typically subject to income tax, and early withdrawals before age 59½ may incur penalties, though certain exceptions exist for specific circumstances like disability or early retirement. Overall, 401(k) plans serve as a valuable tool for long-term retirement planning and wealth accumulation for employees. "),
        Chat(tutorName: "Roth IRA", tutorImage: "https://images.pexels.com/photos/3474629/pexels-photo-3474629.jpeg?cs=srgb&dl=pexels-mododeolhar-3474629.jpg&fm=jpg", lastMessage: "A Roth IRA is a type of individual retirement account where contributions are made with after-tax dollars, meaning you don't receive a tax deduction for your contributions. However, one of the key benefits of a Roth IRA is that qualified withdrawals in retirement, including both contributions and earnings, are tax-free. This makes it an attractive option for individuals who anticipate being in a higher tax bracket in retirement or who want to diversify their tax liability. Additionally, Roth IRAs offer flexibility in investment choices and allow penalty-free withdrawals of contributions (but not earnings) at any time, making them a versatile tool for long-term savings and retirement planning."),
        Chat(tutorName: "Health Savings Account ", tutorImage: "https://images.pexels.com/photos/3813342/pexels-photo-3813342.jpeg?cs=srgb&dl=pexels-olly-3813342.jpg&fm=jpg", lastMessage: "A Health Savings Account (HSA) is a tax-advantaged savings account available to individuals with high-deductible health plans (HDHPs). Contributions to an HSA are tax-deductible, and any interest or investment earnings on the funds are tax-free. The money in an HSA can be withdrawn tax-free at any time to pay for qualified medical expenses, including a wide range of medical, dental, and vision costs. HSAs offer portability, meaning the funds belong to the account holder and can be carried over from year to year, even if they change jobs or health insurance plans. However, withdrawals for non-qualified expenses before age 65 are subject to income tax plus a 20% penalty, with only income tax applicable after age 65. Overall, HSAs serve as a valuable tool for managing healthcare costs, providing tax advantages, and saving for future medical needs.Besides Health Savings Accounts (HSAs), there are other types of healthcare accounts available, each with its own features and purposes: 1. Flexible Spending Accounts (FSAs): FSAs are offered by employers and allow employees to set aside pre-tax dollars to cover qualified medical expenses. Unlike HSAs, funds contributed to an FSA do not roll over from year to year (with some exceptions for a limited carryover or grace period) and are subject to a 'use-it-or-lose-it' rule. 2. Health Reimbursement Arrangements (HRAs): HRAs are funded solely by employers and can be used to reimburse employees for qualified medical expenses. Unlike HSAs and FSAs, employees cannot contribute to HRAs, and any unused funds typically remain with the employer when an employee leaves the company. 3. Archer Medical Savings Accounts (MSAs): Archer MSAs are similar to HSAs but are available to individuals who are self-employed or employed by small businesses with fewer than 50 employees. They have lower contribution limits than HSAs and are less common since HSAs became more widely available. 4. Dependent Care Flexible Spending Accounts (DCFSA): DCFSAs allow employees to set aside pre-tax dollars to cover eligible dependent care expenses, such as childcare or eldercare, so they can work or look for work. These accounts are separate from healthcare FSAs and have their own contribution limits and rules.Each of these healthcare account options provides opportunities for individuals and families to save money on healthcare and dependent care expenses through tax advantages and employer contributions, with varying rules regarding contribution limits, rollover provisions, and eligible expenses."),
        Chat(tutorName: "Gender Pay Gap", tutorImage: "https://media.istockphoto.com/id/1196391449/photo/portrait-of-african-woman.jpg?s=612x612&w=0&k=20&c=b-hwtJGyg5Y-hwG-9id9D3hb71TmaqyDlfU-Ps3GA2s=", lastMessage: "The pay gap, often referred to as the gender pay gap, is the disparity in earnings between men and women. It's a complex issue influenced by various factors including discrimination, occupational segregation, differences in education and experience, and societal norms. One aspect of the gender pay gap is the unexplained portion, which persists even after accounting for factors like occupation, education, and experience. This unexplained gap is often attributed to factors such as implicit bias, discrimination, and unequal opportunities for career advancement. Addressing the pay gap requires a multi-faceted approach. Policies promoting pay transparency, equal pay for equal work, and measures to address systemic biases are crucial. Additionally, efforts to challenge stereotypes about gender roles and encourage women's participation in traditionally male-dominated fields can help narrow the gap."),
        Chat(tutorName: "Negotiating", tutorImage: "https://plus.unsplash.com/premium_photo-1690407617542-2f210cf20d7e?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aGVhZCUyMHNob3R8ZW58MHx8MHx8fDA%3D", lastMessage: "Learn to be your cheerleader! We believe you should know what you deserve. We hope that equipping you with that knowledge encourages you to demand it for yourself. 1. Research: Arm yourself with knowledge about typical salaries for your position and industry. We hope our report does this. Websites like Glassdoor, Payscale, and LinkedIn can further help you understand your worth in the market. 2. Know your value: Highlight your skills, experience, and achievements during negotiations. Be prepared to articulate why you deserve to be compensated fairly for your contributions. 3. Practice negotiation: Practice your negotiation skills beforehand. Confidence and preparation can make a big difference in negotiation outcomes. 4. Focus on performance: Emphasize your performance and contributions to the organization rather than personal circumstances. Frame your negotiation in terms of the value you bring to the company. 5. Be flexible: While it's important to advocate for fair compensation, it may be helpful to be open to compromise and alternative forms of compensation, such as additional vacation days, flexible work arrangements, or professional development opportunities. 6. Consider timing: Choose the right time to negotiate, such as during performance reviews or when you have recently achieved significant milestones or successes."),

        
    ]
    
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                Text("Financial Resources")
                                    .font(.system(size: 30))
                                    .bold()
                                    .padding(.top, 20)
                                    .padding(.bottom,20)
                                    .padding(.leading, 20)
                                    .foregroundColor(.pink)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                
                
                
                
                ForEach(chats) { chat in
                    NavigationLink(destination: ChatDetail(resource: chat)) {
                        ChatCell(chat: chat)
                    }
                    .buttonStyle(PlainButtonStyle())
                    .foregroundColor(.primary)
                    Divider()
                }
            }
            .padding(.vertical, 10)
        }
        .navigationBarBackButtonHidden(true)
        .overlay(
            // Fixed buttons at the bottom
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    
                    // Chat button
                    NavigationLink{
                        Retirement()
                    }label: {
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
                    }label:{
                        Image("blackHome")
                            .font(.title)
                            .frame(width: 42.05,height:42.05)
                            .padding()
                    }
                    .padding(.trailing)
                    Spacer()
                    
                    // Profile button
                    NavigationLink{
                       
                    } label :{
                        Image("finProfile")
                            .font(.title)
                            .frame(width: 42.05,height:42.05)
                            .padding()
                    }
                    .padding(.trailing)
                    Spacer()
                    
                    
                }
                .padding()
                .background(.white)
            }
            
            
            
                .offset(y: 20),
            alignment: .bottom
        )
        
    }
    
}


struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ChatView(name: "John", username: "jDoe", password: "jjj", major: "Info Science", college: "Engineering", subjects: "chemistry, physics", bio: "hey I would love to help!", budget: 40.0, price: nil, availability: nil, img: "")
        
        }
        .navigationBarBackButtonHidden(true)
    }
}
