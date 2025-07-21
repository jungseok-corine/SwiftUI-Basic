//
//  ScrollViewBasic.swift
//  SwiftUI Basic
//
//  Created by 오정석 on 2/7/2025.
//

import SwiftUI

struct ScrollViewBasic: View {
    var body: some View {
        //        // 수직 스크롤뷰
        //        ScrollView(.vertical, showsIndicators: true, content: {
        //            VStack {
        //                ForEach(0..<50) { index in
        //                    Rectangle()
        //                        .fill(.blue)
        //                        .frame(height: 300)
        //                        .overlay(
        //                            Text("\(index) 번")
        //                                .font(.title)
        //                        )
        //                }
        //            }
        //        })
        //
        //        // 수평 스크롤뷰
        //        ScrollView(.horizontal, showsIndicators: true) {
        //            HStack {
        //                ForEach(0..<50) { index in
        //                    Rectangle()
        //                        .fill(.blue)
        //                        .frame(width: 300, height: 300)
        //                        .overlay(
        //                            Text("\(index) 번")
        //                                .font(.title)
        //                        )
        //                }
        //            }
        //        }
        //
        // 혼합 스크롤뷰 (수직에 수평 들어간)
        
        ScrollView(.vertical, showsIndicators: true) {
            LazyVStack {
                ForEach(0..<10) { index in
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(0..<10) { index in
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(.purple)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
        .padding(.all, 20)
    }
}

#Preview {
    ScrollViewBasic()
}
