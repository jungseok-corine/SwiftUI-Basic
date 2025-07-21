//
//  ButtonBasic.swift
//  SwiftUI Basic
//
//  Created by 오정석 on 2/7/2025.
//

import SwiftUI

struct ButtonBasic: View {
    @State var mainTitle: String = "아직 버튼 안눌림"
    
    var body: some View {
        VStack(spacing: 20) {
            Text(mainTitle)
                .font(.title)
            
            Divider()
            
            Button {
                self.mainTitle = "기본 버튼 눌림"
            } label: {
                Text("기본 버튼")
            }
            .accentColor(.red)
            
            Divider()
            
            Button {
                self.mainTitle = "저장 버튼 눌림"
            } label: {
                Text("저장 버튼")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                        .cornerRadius(10)
                        .shadow(radius: 10)
                    )
            }

            Divider()
            
            Button {
                self.mainTitle = "하트 버튼 눌림"
            } label: {
                Circle()
                    .fill(.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(.red)
                    )
            }
            
            Button {
                self.mainTitle = "액션 버튼 눌림"
            } label: {
                Text("완료")
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(.gray, lineWidth: 2.5)
                    )
            }


        }
    }
}

#Preview {
    ButtonBasic()
}
