//
//  ContentView.swift
//  SwiftUIDay01ex02
//
//  Created by kyuhyeon Lee on 2/10/25.
//

import SwiftUI

struct CustomButton: View {
    var title: String
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
        }
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            CustomButton(title: "Click Me") {
                print("Hello world!")
            }
            .padding()

            Text("Placeholder")
                .font(.title)
                .multilineTextAlignment(.center)
                .padding()

            Button("클릭!") {
                print("클릭했습니다.")
            }
            .padding(.trailing, 0.0)
        }
    }
}

#Preview {
    ContentView()
}
