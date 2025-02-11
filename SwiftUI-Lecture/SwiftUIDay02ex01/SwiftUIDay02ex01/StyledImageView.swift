//
//  StyledImageView.swift
//  SwiftUIDay02ex01
//
//  Created by kyuhyeon Lee on 2/11/25.
//

import SwiftUI

struct StyledImageView: View {
    var body: some View {
        Image("img01")
            .resizable()
            .frame(width: 200, height: 200)
            .scaledToFit()
            .clipShape(Circle())
    }
}

// 이전 버전 호환 가능 프로바이더
struct StyledImageView_Previews: PreviewProvider {
    static var previews: some View {
        StyledImageView()
    }
}
