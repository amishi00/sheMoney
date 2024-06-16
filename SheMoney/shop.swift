//
//  shop.swift
//  SheMoney
//
//  Created by Ashish Kumar on 5/17/24.
//

import Foundation
import SwiftUI
import SwiftUI

struct ItemCell: View {
    let item: Item
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(item.name)
                .font(.headline)
            Text(item.brand)
                .font(.subheadline)
            Text("Points: \(item.points)")
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

struct SavingsItemsView: View {
    let items: [Item] = [
        Item(name: "Sweatshirt", brand: "Hollister", points: 100),
        Item(name: "Bottle", brand: "HydroFlask", points: 150),
        Item(name: "Tampons", brand: "Tampax", points: 200),
        Item(name: "Bike", brand: "Head", points: 100),
        Item(name: "Backpack", brand: "Nike", points: 300),
        Item(name: "Lamp", brand: "Siemens", points: 350),
        Item(name: "Headphones", brand: "Sony", points: 120),
        Item(name: "Watch", brand: "Apple", points: 180),
        Item(name: "Sneakers", brand: "Adidas", points: 220),
        Item(name: "Jacket", brand: "North Face", points: 270),
        Item(name: "Gaming Console", brand: "Nintendo", points: 320),
        Item(name: "Smartphone", brand: "Samsung", points: 380),
    ]
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
            ScrollView{
                VStack {
                    Text("Shop")
                        .font(.system(size: 30))
                        .bold()
                        .padding(.top, 20)
                        .padding(.leading,30)
                        .foregroundColor(.pink)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("Spend your points anywhere:")
                        .font(.system(size: 18))
                        .italic()
                        .padding(.leading,30)
                        .padding(.trailing, 30)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(items) { item in
                            ItemCell(item: item)
                        }
                    }
                    .padding()
                }
                .padding(.horizontal, 20) // Add padding to limit the width of the items
            }
        }
}

struct shop_Previews: PreviewProvider {
    static var previews: some View {
        SavingsItemsView()
    }
}
