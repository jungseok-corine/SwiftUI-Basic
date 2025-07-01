//
//  ContentView.swift
//  SwiftUI Basic
//
//  Created by 오정석 on 30/6/2025.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Hello, world!")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.green)

            Text("My name is Ben")
                .font(.subheadline)
                .fontWeight(.semibold)
                .foregroundColor(.blue)
                .fontDesign(.monospaced)
            
            Text("멀티라인 얼라이먼트. 멀티라인 얼라이먼트. 멀티라인 얼라이먼트. 멀티라인 얼라이먼트. 멀티라인 얼라이먼트. 멀티라인 얼라이먼트.")
                .multilineTextAlignment(.center)
        }
        .padding()
    }
}

#Preview {
    TextView()
}
