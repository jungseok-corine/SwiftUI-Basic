//
//  ExtractViewBasic.swift
//  SwiftUI Basic
//
//  Created by 오정석 on 3/7/2025.
//

import SwiftUI

struct ExtractViewBasic: View {
    @State var backgroundColor: Color = .pink
    
    var body: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea()
            
            contentLayout
        }
    }
    
    var contentLayout: some View {
        // content
        VStack {
            Text("Extract View 연습")
                .font(.largeTitle)
            
            Button {
                buttonPressed()
            } label: {
                Text("바탕색 변경")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(.black)
                    .cornerRadius(10)
            }
        }
    }
    
    func buttonPressed() {
        backgroundColor = .yellow
    }
}

#Preview {
    ExtractViewBasic()
}
