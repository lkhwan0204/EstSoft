//
//  ActionSheetView.swift
//  SwiftUIDay03ex03
//
//  Created by kyuhyeon Lee on 2/12/25.
//


import SwiftUI

struct ActionSheetView: View {
    @State private var showActionSheet = false

    var body: some View {
        Button("Show ActionSheet") {
            showActionSheet = true
        }
        .actionSheet(isPresented: $showActionSheet) {
            ActionSheet(
                title: Text("Select Option"),
                buttons: [
                    .default(Text("Option 1")),
                    .destructive(Text("Delete")),
                    .cancel()
                ]
            )
        }
    }
}

#Preview {
    ActionSheetView()
}
