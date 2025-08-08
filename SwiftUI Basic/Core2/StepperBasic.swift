//
//  StepperBasic.swift
//  SwiftUI Basic
//
//  Created by 오정석 on 7/8/2025.
//

import SwiftUI

struct StepperBasic: View {
    @State var stepperValue: Int = 0
    @State var widthChange: CGFloat = 0
    
    var body: some View {
        VStack {
            Stepper("기본 Stepper: \(stepperValue)", value: $stepperValue)
                .padding()
            
            Divider()
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width: 100 + widthChange, height: 100)
            
            Stepper("직사각형 너비 변화") {
                // 플러스 버튼을 누를떄
                differentWidth(amount: 20)
            } onDecrement: {
                // 마이너스 버튼을 누를떄
                differentWidth(amount: -20)
            }
        }
    }
    
    func differentWidth(amount: CGFloat) {
        withAnimation(.easeInOut) {
            if widthChange == -80 {
                widthChange += amount
            }
        }
    }
}

#Preview {
    StepperBasic()
}
