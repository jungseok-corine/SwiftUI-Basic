//
//  ImageBasic.swift
//  SwiftUI Basic
//
//  Created by 오정석 on 1/7/2025.
//

import SwiftUI

struct ImageBasic: View {
    var body: some View {
        VStack (spacing: 20) {
            Image("nature")
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 300)
                .cornerRadius(150)
            
            Divider()
            
            Image("nature")
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 300)
                .clipShape(.circle)
        }
    }
}

#Preview {
    ImageBasic()
}
