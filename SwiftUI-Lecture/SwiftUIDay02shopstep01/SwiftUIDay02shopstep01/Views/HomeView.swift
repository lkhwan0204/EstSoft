//
//  HomeView.swift
//  SwiftUIDay02shopstep01
//
//  Created by kyuhyeon Lee on 2/11/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ProductListView().navigationTitle(Text("과일 상회"))
        }
    }
}

#Preview {
    HomeView()
}
