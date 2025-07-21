//
//  ColorBasic.swift
//  SwiftUI Basic
//
//  Created by 오정석 on 1/7/2025.
//

import SwiftUI

struct ColorBasic: View {
    var body: some View {
        VStack (spacing: 20) {
            Text("Basic Color")
                .font(.title)
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.purple)
                .frame(width: 300, height: 100, alignment: .center)
            
            Text("Primary Color")
                .font(.title)
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.primary)
                .frame(width: 300, height: 100, alignment: .center)
            
            Text("UIColor")
                .font(.title)
            RoundedRectangle(cornerRadius: 25)
                .fill(Color(UIColor.secondarySystemBackground))
                .frame(width: 300, height: 100, alignment: .center)
            
            Text("Custom Color")
                .font(.title)
            RoundedRectangle(cornerRadius: 25)
                .trim(from: 0.4, to: 1.0)
                .fill(Color("CustomColor"))
                .frame(width: 300, height: 100, alignment: .center)
                
        }
    }
}

#Preview {
    ColorBasic()
}
