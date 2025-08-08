//
//  ToggleBasic.swift
//  SwiftUI Basic
//
//  Created by 오정석 on 5/8/2025.
//

import SwiftUI

struct ToggleBasic: View {
    @State var toggleIsOn: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Text("로그인 상태:")
                Text(toggleIsOn ? "온라인" : "오프라인")
            } //: Hstack
            
            Toggle(isOn: $toggleIsOn) {
                Text("로그인 상태 선택")
            }
            .toggleStyle(SwitchToggleStyle(tint: .red))
            Spacer()
        } //: Vstack
        .padding(.horizontal, 100)
    }
}

#Preview {
    ToggleBasic()
}
