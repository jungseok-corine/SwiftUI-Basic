//
//  OnTapGestureBasic.swift
//  SwiftUI Basic
//
//  Created by 오정석 on 7/8/2025.
//

import SwiftUI

struct OnTapGestureBasic: View {
    @State var isSelected: Bool = false
    //    @State var color: [Color]
    var body: some View {
        VStack(spacing: 20) {
            RoundedRectangle(cornerRadius: 25)
                .frame(height: 200)
                .foregroundColor(isSelected ? .green : .red)
            
            Button {
                isSelected.toggle()
            } label: {
                Text("1. 일반적인 button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(.blue)
                    .cornerRadius(25)
            }
            
            // 2. onTapGesture 한번 클릭
            Text("2. onTapGesture 한번 클릭")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(.blue)
                .cornerRadius(25)
                .onTapGesture {
                    isSelected.toggle()
                }
            
            // 3. onTapGesture 두번 클릭
            Text("3. onTapGesture 두번 클릭")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(.blue)
                .cornerRadius(25)
                .onTapGesture(count: 2) {
                    isSelected.toggle()
                }
            
            Spacer()

        } //: Vstack
        .padding(40)
    }
}

#Preview {
    OnTapGestureBasic()
}
