//
//  ContentView.swift
//  SwiftUIDay03ex02
//
//  Created by kyuhyeon Lee on 2/12/25.
//

import SwiftUI

struct ContentView: View {
    
    @ViewBuilder
    func createContentView(showTitle: Bool) -> some View {
        if showTitle {
            Text("나의 앱").font(.largeTitle)
        }
        Image(systemName: "globe")
            .imageScale(.large)
            .foregroundStyle(.tint)
        Text("Hello, world!")
    }
    
    var body: some View {
        createContentView(showTitle: false)
    }
}

#Preview {
    ContentView()
}
