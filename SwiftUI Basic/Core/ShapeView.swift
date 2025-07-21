//
//  ShapeView.swift
//  SwiftUI Basic
//
//  Created by 오정석 on 30/6/2025.
//

import SwiftUI

struct ShapeView: View {
    var body: some View {
        VStack (spacing: 20) {
            Text("원형")
                .font(.title)
            Circle()
//                .fill(.blue)
                .trim(from: 0.2, to: 1.0)
                .stroke(Color.red, lineWidth: 30)
                .frame(width: 200, height: 100, alignment: .center)
                .foregroundStyle(.black)
        }
    }
}

#Preview {
    ShapeView()
}
