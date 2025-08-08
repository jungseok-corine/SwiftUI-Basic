//
//  ColorPickerBasic.swift
//  SwiftUI Basic
//
//  Created by 오정석 on 6/8/2025.
//

import SwiftUI

struct ColorPickerBasic: View {
    @State var backgroundColor: Color = .green
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            ColorPicker(selection: $backgroundColor, supportsOpacity: true) {
                Text("원하는 색을 고르세요")
            }
            .padding()
            .background(.black)
            .cornerRadius(10)
            .foregroundColor(.white)
            .padding(50)
        }
    }
}

#Preview {
    ColorPickerBasic()
}
