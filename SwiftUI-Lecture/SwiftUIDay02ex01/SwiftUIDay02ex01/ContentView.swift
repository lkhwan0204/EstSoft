//
//  ContentView.swift
//  SwiftUIDay02ex01
//
//  Created by kyuhyeon Lee on 2/11/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            StyleTextView()
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, World!")
        }
        .padding()
        
        Button("확인") {
            test()
        }
    }
    
    func test() {
        print("JSON 데이터의 변환 예제")
    }
}
#Preview {
    ContentView()
}
