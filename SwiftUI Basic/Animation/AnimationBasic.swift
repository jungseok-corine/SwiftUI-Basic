//
//  AnimationBasic.swift
//  SwiftUI Basic
//
//  Created by 오정석 on 7/7/2025.
//

import SwiftUI

struct AnimationBasic: View {
    @State var isAnimated: Bool = false
    
    let timing: Double = 5.0
    
    var body: some View {
//        VStack {
//            Button {
//                withAnimation(
//                    .default
////                        .repeatCount(5)
//                ) {
//                    isAnimated.toggle()
//                }
//            } label: {
//                Text("Button")
//            }
//            
//            Spacer()
//            
//            RoundedRectangle(cornerRadius: isAnimated ? 50 : 0)
//                .fill(isAnimated ? .red : .green)
//                .frame(width: isAnimated ? 100 : 300, height: isAnimated ? 100 : 300)
//                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
//                .offset(y: isAnimated ? 300 : 0)
//            
//            Spacer()
//        }
        
        VStack {
            Button {
                isAnimated.toggle()
            } label: {
                Text("Button")
            }
            
            // LinearAnimation : 처음부터 끝까지 속도가 일정합니다.
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.linear(duration: timing), value: isAnimated)
            
            // easeIn : 처음에 느렸다가 끝에 빨라지는 효과입니다.
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.easeIn(duration: timing), value: isAnimated)
            
            // easeOut : 처음엔 빨랐다가 끝에 느려지는 효과입니다.
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.easeOut(duration: timing), value: isAnimated)
            
            // easeInOut : 처음과 끝엔 느려지고 중간부분에서 빨라지는 효과입니다.
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.easeInOut(duration: timing), value: isAnimated)
            
        }
    }
}

#Preview {
    AnimationBasic()
}
