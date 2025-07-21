//
//  TernaryBasic.swift
//  SwiftUI Basic
//
//  Created by 오정석 on 7/7/2025.
//

import SwiftUI

struct TernaryBasic: View {
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack {
            Button {
                isStartingState.toggle()
            } label: {
                Text("if else 버튼: \(isStartingState)")
            }
            
            if isStartingState {
                RoundedRectangle(cornerRadius: 25)
                    .fill(.red)
                    .frame(width: 200, height: 100)
            } else {
                RoundedRectangle(cornerRadius: 25)
                    .fill(.blue)
                    .frame(width: 200, height: 100)
            }
            
            Button {
                isStartingState.toggle()
            } label: {
                Text("Ternary 버튼: \(isStartingState)")
            }
            
            
                RoundedRectangle(cornerRadius: 25)
                .fill(isStartingState ? .red : .blue)
                    .frame(width: 200, height: 100)
            
            
            Spacer()

        }
    }
}

#Preview {
    TernaryBasic()
}
