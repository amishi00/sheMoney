//
//  shop.swift
//  SheMoney
//
//  Created by Ashish Kumar on 5/17/24.
//

import Foundation
import SwiftUI

struct Stock: Identifiable {
    let id = UUID()
    let name: String
    let image : String
    let brand: String
    let points: Int
}
struct stockCell: View {
    let item: Stock
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(item.image)
                .resizable()
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            Text(item.name)
                .font(.headline)
            Text(item.brand)
                .font(.subheadline)
            Text("Increasing: \(item.points)")
                .font(.subheadline)
                .foregroundColor(.green)
                .bold()
        }
        .padding()
        .frame(width: 150, height: 150)
        .background(Color.gray.opacity(0.1))
        .cornerRadius(10)
    }
}

struct stocksView: View {
    let images = ["one", "two","three","four", "five", "six","seven", "eight"]
    let items: [Stock] = [
        Stock(name: "S&P500", image: "seven", brand: "SNP", points: 847),
        Stock(name: "FNILX", image: "four", brand: "Fidelity", points: 563),
        Stock(name: "VFIAX", image: "three", brand: "Vanguard", points: 278),
        Stock(name: "STSEX", image: "four", brand: "Black Rock", points: 890),
        Stock(name: "PRDGX", image: "five", brand: "Rowe Price", points: 348),
        Stock(name: "AMZN", image: "six", brand: "Amazon", points: 350),
     
        Stock(name: "APPL", image: "seven", brand: "Apple", points: 187),
        Stock(name: "NVDA", image: "eight", brand: "NVIDIA", points: 220),
    
    ]
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView{
            VStack {
                
                Text("Stocks")
                    .font(.system(size: 30))
                    .bold()
                    .padding(.top, 20)
                    .padding(.leading,30)
                    .foregroundColor(.pink)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text("Spend your savings on the recommended stocks below:")
                    .font(.system(size: 18))
                    .italic()
                
                    .padding(.leading,30)
                    .padding(.trailing, 30)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(items) { item in
                        stockCell(item: item)
                    }
                }
                .padding()
            }
            .padding(.horizontal, 20) // Add padding to limit the width of the items
        }
    }
}

struct stock_Previews: PreviewProvider {
    static var previews: some View {
        stocksView()
    }
}
