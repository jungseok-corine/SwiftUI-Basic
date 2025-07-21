//
//  StackBasic.swift
//  SwiftUI Basic
//
//  Created by 오정석 on 1/7/2025.
//

import SwiftUI

struct StackBasic: View {
    var body: some View {
//        VStack(alignment: .leading, spacing: 20) {
//            Rectangle()
//                .fill(.red)
//                .frame(width: 200, height: 200)
//            Rectangle()
//                .fill(.green)
//                .frame(width: 150, height: 150)
//            Rectangle()
//                .fill(.orange)
//                .frame(width: 100, height: 100)
//        }
//        
//        HStack (spacing: 20) {
//            Rectangle()
//                .fill(.red)
//                .frame(width: 100, height: 100)
//            Rectangle()
//                .fill(.green)
//                .frame(width: 100, height: 100)
//            Rectangle()
//                .fill(.orange)
//                .frame(width: 100, height: 100)
//        }
        
//        ZStack(alignment: .topLeading) {
//            Rectangle()
//                .fill(.red)
//                .frame(width: 200, height: 200)
//            Rectangle()
//                .fill(.green)
//                .frame(width: 150, height: 150)
//            Rectangle()
//                .fill(.orange)
//                .frame(width: 100, height: 100)
//        }
//        
//        ZStack(alignment: .top) {
//            Rectangle()
//                .fill(.yellow)
//                .frame(width: 350, height: 500)
//            
//            VStack(alignment: .leading, spacing: 30) {
//                Rectangle()
//                    .fill(.red)
//                    .frame(width: 150, height: 150)
//                
//                Rectangle()
//                    .fill(.green)
//                    .frame(width: 100, height: 100)
//                
//                HStack(alignment: .bottom, spacing: 10) {
//                    Rectangle()
//                        .fill(.purple)
//                        .frame(width: 50, height: 50)
//                    Rectangle()
//                        .fill(.pink)
//                        .frame(width: 75, height: 75)
//                    Rectangle()
//                        .fill(.blue)
//                        .frame(width: 25, height: 25)
//                }.background(.white)
//            }.background(.black)
//        }
        
        VStack(spacing: 50) {
            ZStack {
                Circle()
                    .frame(width: 100, height: 100)
                
                Text("1")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
            Text("1")
                .font(.title)
                .foregroundColor(.white)
                .background(
                    Circle()
                        .frame(width: 100, height: 100)
                )
        }
    }
}

#Preview {
    StackBasic()
}
