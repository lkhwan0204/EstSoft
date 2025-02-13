//
//  ContentView 2.swift
//  SwiftUIDay04Ex01UserDefaults
//
//  Created by kyuhyeon Lee on 2/13/25.
//


import SwiftUI

struct ContentView2: View {
    @AppStorage("isDarkMode") private var isDarkMode: Bool = false

    var body: some View {
        VStack {
            Text(isDarkMode ? "다크 모드" : "라이트 모드")
                .font(.largeTitle)
                .padding()

            Toggle("다크 모드 전환", isOn: $isDarkMode)
                .padding()
        }
        .preferredColorScheme(isDarkMode ? .dark : .light)
    }
}

#Preview {
    ContentView2()
}
