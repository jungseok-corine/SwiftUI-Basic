//
//  PickerBasic.swift
//  SwiftUI Basic
//
//  Created by 오정석 on 5/8/2025.
//

import SwiftUI

struct PickerBasic: View {
    let typeOfPhone: [String] = ["애플", "삼성", "샤오미", "화웨이", "구글", "기타 브랜드"]
    
    @State var selectIndex: Int = 0
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker(selection: $selectIndex, label: Text("기종 선택")) {
                        ForEach(0 ..< typeOfPhone.count, id: \.self) { index in
                            Text(typeOfPhone[index])
                        }
                    } //: Picker
                    .pickerStyle(.wheel)
                } //: Section
                Text("핸드폰 제조사는 \(typeOfPhone[selectIndex]) 입니다.")
                    .padding()
                    .foregroundColor(.white)
                    .background(.blue)
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .center)
                    
            } //: Form
            .navigationTitle(Text("현재 사용중인 핸드폰 기종은?"))
            .navigationBarTitleDisplayMode(.inline)
        } //: NavigationView
    }
}

#Preview {
    PickerBasic()
}
