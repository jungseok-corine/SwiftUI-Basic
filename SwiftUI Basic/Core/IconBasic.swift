//
//  IconBasic.swift
//  SwiftUI Basic
//
//  Created by 오정석 on 1/7/2025.
//

import SwiftUI

struct IconBasic: View {
    var body: some View {
        VStack (spacing: 20) {
            Image(systemName: "person.fill.badge.plus")
                .resizable()
                .renderingMode(.original)
                .scaledToFill()
                .foregroundColor(.red)
                .frame(width: 300, height: 300)
        }
    }
}

#Preview {
    IconBasic()
}
