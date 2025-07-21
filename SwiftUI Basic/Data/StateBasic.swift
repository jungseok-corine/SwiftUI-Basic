//
//  StateBasic.swift
//  SwiftUI Basic
//
//  Created by 오정석 on 3/7/2025.
//

import SwiftUI

struct StateBasic: View {
    @State var backgroundColor: Color = .green
    @State var myTitle: String = "아직 버튼 안누림"
    @State var count:Int = 0
    
    var body: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text(myTitle)
                    .font(.title)
                Text("카운트 : \(count)")
                
                HStack(spacing: 20) {
                    Button {
                        //action
                        backgroundColor = .red
                        myTitle = "1번 버튼 눌림"
                        count += 1
                    } label: {
                        Text("1번 버튼")
                    }
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.black)
                            .frame(width: 75, height: 50)
                            .shadow(radius: 20, x: 0, y: 5)
                    )
                    
                    Button {
                        //action
                        backgroundColor = .purple
                        myTitle = "2번 버튼 눌림"
                        count -= 1
                    } label: {
                        Text("2번 버튼")
                    }
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.black)
                            .frame(width: 75, height: 50)
                            .shadow(radius: 20, x: 0, y: 5)
                    )
                }
            }
            .foregroundColor(.white)
        }
    }
}

#Preview {
    StateBasic()
}
