//
//  SliderBasic.swift
//  SwiftUI Basic
//
//  Created by 오정석 on 7/8/2025.
//

import SwiftUI

struct SliderBasic: View {
    @State var sliderValue: Double = 3
    @State var color: Color = .blue
    
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Text("레벨:")
                Text("\(sliderValue)")
                Text(String(format: "%.0f", sliderValue))
            } //: HStack
            .foregroundColor(color)
            // value는 항상 float(Double) Int가 아닌 float 타입으로 설정
            // in: 슬라이더의 범위
            // step: 단계 설정  슬라이더가  어떤 단위로 증가 감소 되는지 설정
            Slider(value: $sliderValue,
                   in: 1...5,
                   step: 1.0,
                   onEditingChanged: { _ in
                color = .red
            }, minimumValueLabel: Text("1"),
                   maximumValueLabel: Text("5")) {
                Text("라벨")
            }
                   .accentColor(.red)
                   .padding()
        } //: VStack
    }
}

#Preview {
    SliderBasic()
}
