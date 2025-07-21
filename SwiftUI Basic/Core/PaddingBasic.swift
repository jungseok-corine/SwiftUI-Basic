//
//  PaddingBasic.swift
//  SwiftUI Basic
//
//  Created by 오정석 on 1/7/2025.
//

import SwiftUI

struct PaddingBasic: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .background(.yellow)
                .padding(.leading, 20)
                .background(.blue)
                .padding(.bottom, 20)
            
            Divider()
            
            Text("Hello, World!")
                .font(.title)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, 20)
            
            Text("안녕하세요 hellow world에 오신걸 환영합니다. 안녕하세요 hellow world에 오신걸 환영합니다. 안녕하세요 hellow world에 오신걸 환영합니다. 안녕하세요 hellow world에 오신걸 환영합니다. 안녕하세요 hellow world에 오신걸 환영합니다.")
            
        }
        .padding()
        .padding(.vertical, 30)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(
                    color: .black.opacity(0.3),
                    radius: 10,
                    x: 10, y: 10)
        )
        .padding()
    }
}

#Preview {
    PaddingBasic()
}
