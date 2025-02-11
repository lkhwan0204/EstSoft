//
//  NestedLayoutView.swift
//  SwiftUIDay02ex01
//
//  Created by kyuhyeon Lee on 2/11/25.
//

import SwiftUI

struct NestedLayoutView: View {
    var body: some View {
        VStack {
            HStack {
                Text("이름:")
                    .font(.headline)
                Text("이규현")
                    .font(.body)
            }
                    .padding()
                    .background(Color.yellow.opacity(0.3))
        }
        
                  
                  
    }
}

#Preview {
    NestedLayoutView()
}
