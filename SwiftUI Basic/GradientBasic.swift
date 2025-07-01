//
//  GradientBasic.swift
//  SwiftUI Basic
//
//  Created by 오정석 on 1/7/2025.
//

import SwiftUI

struct GradientBasic: View {
    var body: some View {
        VStack(spacing: 20) {
            // Linear Gradient
            Text("Linear Gradient")
                .font(.title2)
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [.red, .blue]),
                        startPoint: .topLeading,
                        endPoint: .bottom)
                )
                .frame(width: 300, height: 100)
            
            // Radial Gradient
            Text("Radial Gradient")
                .font(.title2)
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    RadialGradient(
                        gradient: Gradient(colors: [.yellow, .purple]),
                        center: .leading,
                        startRadius: 5,
                        endRadius: 300)
                )
                .frame(width: 300, height: 100)
            
            // Angular Gradient
            Text("Angular Gradient")
                .font(.title2)
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    AngularGradient(
                        colors: [.green, .orange],
                        center: .topLeading,
                        angle: .degrees(180)
                    )
                )
                .frame(width: 300, height: 100)
        }
    }
}

#Preview {
    GradientBasic()
}
