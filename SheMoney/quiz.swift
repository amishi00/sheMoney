

import Foundation
import SwiftUI

struct CreateProfileView: View {
    @State private var sexSelection = ""
    @State private var genderSelection = ""
    @State private var raceSelection = ""
    @State private var educationSelection = ""
    @State private var employmentStatusSelection = ""
    @State private var grossIncomeSelection = ""
    @State private var stateOfResidenceSelection = ""
    @State private var countryOfRetirementSelection = ""
    @State private var yearsOfExperienceSelection = ""
    let lightPink = Color(red: 255/255, green: 182/255, blue: 193/255)
    let sexes = ["Male", "Female", "Other"]
    let genders = ["Male", "Female", "Other"]
    let races = ["White", "African-American/Black", "Asian/Pacific Islander", "Native American", "Other"]
    let educationLevels = ["Did not complete high school", "High School Diploma/GED", "Undergraduate Degree", "Bachelor’s Degree", "Master’s Degree", "Doctorate"]
    let employmentStatuses = ["Unemployed", "Self-employed", "Employed"]
    let grossIncomes = ["Less than $1000", "$1000 - $5000", "More than $5000"]
    let statesOfResidence = ["State A", "State B", "State C"] // Add your states here
    let countriesOfRetirement = ["Country A", "Country B", "Country C"] // Add your countries here
    let yearsOfExperience = ["Less than 1 year", "1-5 years", "More than 5 years"]
    let ages = ["18-25", "26-35", "36-45", "46-55", "56-65", "65+"]
    
    var body: some View {
        ScrollView{
            VStack(spacing: 10) {
                Button(action: {
                    // Handle image upload
                }) {
                    Image( "finalSignUp")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 276)
                        .foregroundColor(.gray)
                }
                
                Text("Personal Info")
                    .font(.system(size: 30))
                    .bold()
                    .padding(.top, 20)
                    .padding(.leading,56)
                    .foregroundColor(.pink)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                
                Text("Tell us a little bit about you!")
                    .font(.system(size: 18))
                    .padding(.bottom, 20)
                    .padding(.leading,56)
                    .frame(maxWidth: .infinity, alignment: .leading)
                TextField("Sex (Male/Female/Other)", text: $sexSelection)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(maxWidth: 275) // Increase height
                
                TextField("Gender (Male/Female/Other)", text: $genderSelection)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(maxWidth: 275)
                TextField("Race", text: $raceSelection)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(maxWidth: 275)
                
                TextField("Education Level", text: $educationSelection)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(maxWidth: 275)
                
                TextField("Employment Status", text: $employmentStatusSelection)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(maxWidth: 275)
                
                TextField("Years of Experience", text: $yearsOfExperienceSelection)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(maxWidth: 275)
            

                TextField("Gross Income (Annually)", text: $grossIncomeSelection)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(maxWidth: 275)
                                        
        TextField("State of Residence", text: $stateOfResidenceSelection)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(maxWidth: 275)
                                        
            TextField("Country of Retirement", text: $countryOfRetirementSelection)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(maxWidth: 275)
                
                NavigationLink(destination: Survey()) {
                    Text("Continue")
                        .foregroundColor(.black)
                        .padding()
                        .frame(maxWidth: 275,maxHeight: 42)
                        .background(lightPink)
                        .cornerRadius(30)
        
                    
                }
                .padding()
                                        
            }
            
                    
                }
                .padding()
                .navigationBarBackButtonHidden(true)
            }
        
}
    


struct CreateProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        CreateProfileView()
    }
}



