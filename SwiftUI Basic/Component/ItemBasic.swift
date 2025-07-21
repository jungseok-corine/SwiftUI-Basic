//
//  ItemBasic.swift
//  SwiftUI Basic
//
//  Created by 오정석 on 3/7/2025.
//

import SwiftUI

struct ItemBasic: View {
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}

#Preview {
    ItemBasic(title: "사과", count: 1, color: .red)
}
