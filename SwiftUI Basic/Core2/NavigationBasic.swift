//
//  NavigationBasic.swift
//  SwiftUI Basic
//
//  Created by 오정석 on 8/7/2025.
//

import SwiftUI

struct NavigationBasic: View {
    @State var showSheet: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink {
                    SecondNavigationBasic()
                } label: {
                    Text("Second Navigation 이동")
                        .foregroundColor(.white)
                        .font(.headline)
                        .padding()
                        .background(.blue)
                }
            } //: VStack
            .navigationTitle("페이지 제목")
            // navigationBarTitleDisplayMode - 상단 페이지 제목 스타일
            // .automatic: 자동, .inline : 상단에 작게, .leading : leading 쪽으로 크게
            .navigationBarTitleDisplayMode(.large)
//            .navigationBarHidden(true)
            .navigationBarItems(leading: Image(systemName: "line.3.horizontal")
                                , trailing: Button(action: {
                showSheet.toggle()
            }, label: {
                Image(systemName: "gear")
            }))
        } //: NavigationView
        .sheet(isPresented: $showSheet) {
            ZStack {
                Color.green.ignoresSafeArea()
                Text("설정 페이지 입니다.")
                    .font(.largeTitle)
            }
        }
    }
}

#Preview {
    NavigationBasic()
}
