//
//  SalaryViewModel.swift
//  SheMoney
//
//  Created by Ashish Kumar on 5/16/24.
//

import Foundation

class SalaryViewModel: ObservableObject {
    @Published var salaryFemale: Double?
    @Published var salaryMale: Double?
    
    func fetchSalary(age: Int, gender: String, education: String, jobTitle: String, experience: Int) {
        guard let url = URL(string: "http://localhost:5000/predict") else { return }
        
        let body: [String: Any] = [
            "Age": age,
            "Gender": gender,
            "Education Level": education,
            "Job Title": jobTitle,
            "Years of Experience": experience
        ]
        
        let finalBody = try? JSONSerialization.data(withJSONObject: body)
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.httpBody = finalBody
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data, error == nil else {
                print("Network request failed: \(error?.localizedDescription ?? "No error")")
                return
            }
            
            if let response = try? JSONDecoder().decode(SalaryResponse.self, from: data) {
                DispatchQueue.main.async {
                    self.salaryFemale = response.salaryFemale
                    self.salaryMale = response.salaryMale
                }
            }
        }.resume()
    }
}

struct SalaryResponse: Codable {
    var salaryFemale: Double
    var salaryMale: Double
}

