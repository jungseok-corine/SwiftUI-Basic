//
//  OnAppearBasic.swift
//  SwiftUI Basic
//
//  Created by 오정석 on 7/8/2025.
//

import SwiftUI

struct OnAppearBasic: View {
    @State var noticeText: String = "onAppear 시작전"
    @State var count: Int = 0
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text(noticeText)
                
                // 화면이 보이고 나서 load가 되게끔 하는 LazyStack
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25)
                            .frame(height: 200)
                            .padding()
                        
                        // onAppear: 새로 화면에 생길떄 마다 count 1씩 증가 시키기
                            .onAppear {
                                count += 1
                            }
                    } //: Loop
                } //: LazyVStack
            } //: ScrollView
            // onAppear: 여기선 onAppearBasicView가 화면에 나타날때마다  시작되는 logic 넣기
            .onAppear {
                // DispatchQueue을 사용해서 main thread 에 2초 딜레이 후 이벤트 설정
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    noticeText = "onAppear 시작 완료 했습니다."
                }
            }
            .navigationTitle("생성된 박스 : \(count)")
        } //: NavigationView
    }
}

#Preview {
    OnAppearBasic()
}
