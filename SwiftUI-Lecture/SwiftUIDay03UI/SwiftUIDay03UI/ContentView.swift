//
//  ContentView.swift
//  SwiftUIDay03UI
//
//  Created by kyuhyeon Lee on 2/12/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message: String = "버튼을 입력하세요."
    var body: some View {
        VStack(spacing: 20) {
            Text(message)
                .font(.title)
                .padding()
        }
        Button(action: {
            message = "버튼이 클릭되었습니다!"
        }) {
            Text("클릭하세요.")
                .font(.headline)
                .frame(maxWidth: .infinity)
                .padding(10)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(20)
        }
        .padding(.horizontal)
    }
}

#Preview {
    ContentView()
}
