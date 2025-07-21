//
//  IgnoreSafeAreaBasic.swift
//  SwiftUI Basic
//
//  Created by 오정석 on 2/7/2025.
//

import SwiftUI

struct IgnoreSafeAreaBasic: View {
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()
            
            VStack {
                Text("Hello, World!")
                    .font(.largeTitle)
            }
        }
        
        ScrollView {
            VStack {
                Text("박스형 리스트")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity)
                
                ForEach(1..<11) { index in
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding()
                        .overlay(
                            Text("\(index) 번 리스트")
                        )
                }
            }
        }
        .background(
            Color.blue
                .ignoresSafeArea()
        )
    }
}

#Preview {
    IgnoreSafeAreaBasic()
}
