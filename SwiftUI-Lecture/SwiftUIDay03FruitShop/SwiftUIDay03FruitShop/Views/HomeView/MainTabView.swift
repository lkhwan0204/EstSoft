//
//  MainTabView.swift
//  SwiftUIDay03FruitShop
//
//  Created by kyuhyeon Lee on 2/12/25.
//


import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
        }
    }
}

#Preview {
    MainTabView()
}
