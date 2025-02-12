//
//  AlertView.swift
//  SwiftUIDay03ex03
//
//  Created by kyuhyeon Lee on 2/12/25.
//

import SwiftUI

struct AlertView: View {
    @State private var showAlert = false

    var body: some View {
        Button("Show Alert") {
            showAlert = true
        }
        .alert("Alert Title", isPresented: $showAlert) {
            Button("OK", role: .cancel) { }
        }
    }
}

#Preview {
    AlertView()
}
