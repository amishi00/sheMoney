//
//  chatDetail.swift
//  SheMoney
//
//  Created by Ashish Kumar on 5/17/24.
//

import SwiftUI
import Foundation




struct ChatDetail: View {
    let resource : Chat
    var body: some View {
        ScrollView {
            VStack{
                Text(resource.tutorName)
                    .font(.system(size: 30))
                    .bold()
                    .padding(.top, 30)
                    .padding(.leading, 30)
                    .foregroundColor(.pink)
                    .frame(maxWidth: .infinity, alignment: .leading)
        
                
                Text(resource.lastMessage)
                    .font(.system(size: 18))
                    .padding(.top, 20)
                    .padding(.leading,30)
                    .padding(.trailing, 30)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                
    
            }
        }
    }
}

struct ChatDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ChatDetail(resource: Chat(tutorName: "Negotiating", tutorImage: "https://plus.unsplash.com/premium_photo-1690407617542-2f210cf20d7e?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aGVhZCUyMHNob3R8ZW58MHx8MHx8fDA%3D", lastMessage: "Learn to be your cheerleader! We believe you should know what you deserve. We hope that equipping you with that knowledge encourages you to demand it for yourself. "))
        }
   
    }
}
