//
//  ContentView.swift
//  SwiftUIDay02ex01
//
//  Created by kyuhyeon Lee on 2/11/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("SwiftUI 실습!")
            .font(.largeTitle)
            .foregroundStyle(.red)
            .background(Color.yellow)
            .padding(10)
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 3))
            .padding(10)
            
    }
}

#Preview {
    ContentView()
}
