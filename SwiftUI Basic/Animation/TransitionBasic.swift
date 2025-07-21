//
//  TransitionBasic.swift
//  SwiftUI Basic
//
//  Created by 오정석 on 7/7/2025.
//

import SwiftUI

struct TransitionBasic: View {
    @State var showTransition: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button {
                    withAnimation(.easeInOut) {
                        showTransition.toggle()
                    }
                } label: {
                    Text("Button")
                }
                
                Spacer()
            }
            
            if showTransition {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .opacity(showTransition ? 1.0 : 0)
                
                // 1번 move transition
//                    .transition(.move(edge: .bottom))
                // 2번 opacity transition
//                    .transition(.opacity)
                
                // 3번 scale transition
//                    .transition(.scale)
                
                // 4번 asymetric transition - 시작점 끝나는 지점을 custom 정해주기 때문에 비대칭 transition
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .top)))
                
            }
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    TransitionBasic()
}
