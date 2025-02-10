//
//  ContentView.swift
//  SwiftUIDay01ex03
//
//  Created by kyuhyeon Lee on 2/10/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("기본 텍스트")
            Text("Hello, world!").foregroundStyle(.red)
            Text("큰 글자").font(.largeTitle).foregroundStyle(.green)
            Text("굵은 글자").bold()
            Text("기울어진 글자").italic()
            Text("밑줄 표시").underline()
            Text("줄간격 \n설정 \n하기").lineSpacing(10).padding()
            Text("다양한 스타일 적용").font(.title).foregroundStyle(.purple).background(Color.yellow).padding()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
