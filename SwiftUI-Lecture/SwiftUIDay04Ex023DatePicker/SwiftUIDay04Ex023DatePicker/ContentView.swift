//
//  ContentView.swift
//  SwiftUIDay04Ex023DatePicker
//
//  Created by kyuhyeon Lee on 2/13/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            
            TextFieldExample()
            Spacer()
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
