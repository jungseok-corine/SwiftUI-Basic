//
//  ConditionalBasic.swift
//  SwiftUI Basic
//
//  Created by 오정석 on 4/7/2025.
//

import SwiftUI

struct ConditionalBasic: View {
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            Button {
                isLoading.toggle()
            } label: {
                Text("로드 중... : \(isLoading.description)")
            }

            if isLoading {
                ProgressView()
            }
                        
            Button {
                showCircle.toggle()
            } label: {
                Text("원형 버튼 : \(showCircle.description)")
            }
            
            if showCircle {
                Circle()
                    .frame(width: 100, height: 100)
            }
            
            Button {
                showRectangle.toggle()
            } label: {
                Text("사각형 버튼 : \(showRectangle.description)")
            }
            
            if showRectangle {
                Rectangle()
                    .frame(width: 100, height: 100)
            }
            
            
            if !showCircle && !showRectangle {
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 200, height: 100)
            }
            
            if showCircle || showRectangle {
                RoundedRectangle(cornerRadius: 25)
                    .fill(.red)
                    .frame(width: 200, height: 100)
            }
            
            Spacer()
        }
    }
}

#Preview {
    ConditionalBasic()
}
