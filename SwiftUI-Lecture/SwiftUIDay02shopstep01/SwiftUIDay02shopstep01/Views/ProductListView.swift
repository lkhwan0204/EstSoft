//
//  ProductListView.swift
//  SwiftUIDay02ShopStep01
//
//  Created by BEOMJOON KIM on 2025.02.11.
//


import SwiftUI

struct ProductListView: View {
    let products = [
        Product(name: "나는야 무화과", imageName: "fig", price: 3100, description: "소화가 잘되고 변비에 좋은 달달한 국내산 무화과에요. 고기와 찰떡궁합!", isFavorite: false),
        Product(name: "나는야 무화과", imageName: "fig", price: 3100, description: "소화가 잘되고 변비에 좋은 달달한 국내산 무화과에요. 고기와 찰떡궁합!", isFavorite: false),
        Product(name: "나는야 무화과", imageName: "fig", price: 3100, description: "소화가 잘되고 변비에 좋은 달달한 국내산 무화과에요. 고기와 찰떡궁합!", isFavorite: false)
    ]

    @State
    var body: some View {
        NavigationView {
            List(products) { product in
                NavigationLink(destination: ProductCard(product: product)) {
                    ProductRow(product: product)
                }
            }
        }
    }
}

#Preview {
    ProductListView()
}
