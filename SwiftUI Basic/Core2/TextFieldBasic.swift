//
//  TextFieldBasic.swift
//  SwiftUI Basic
//
//  Created by 오정석 on 21/7/2025.
//

import SwiftUI

struct TextFieldBasic: View {
    @State var inputText: String = ""
    @State var userNameData: [String] = []
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                // TextField 한줄 - 적은양의 text 입력시 사용
//                TextField("최소 두글자 이상 입력", text: $inputText)
////                    .textFieldStyle(.roundedBorder)
//                    .padding()
//                    .background(.gray.opacity(0.3))
//                    .cornerRadius(10)
//                    .font(.headline)
                // TextEditor 여러줄 - 긴글의 text를 입력시 사용
                TextEditor(text: $inputText)
                    .frame(height: 250)
                    .colorMultiply(.gray.opacity(0.5))
                Button {
                    if isTextEnough() {
                        saveText()
                    }
                } label: {
                    Text("SAVE")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(isTextEnough() ? .blue : .gray)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.headline)
                }
                .disabled(!isTextEnough())

                ForEach(userNameData, id: \.self) { item in
                    Text(item)
                }
                
                Spacer()
            } // Vstack
            .padding()
            .navigationTitle("당신의 이름은?")
        } // NavigationView
    }
    
    func isTextEnough() -> Bool {
        if inputText.count >= 2 {
            return true
        } else {
            return false
        }
    }
    
    func saveText() {
        userNameData.append(inputText)
        inputText = ""
    }
}

#Preview {
    TextFieldBasic()
}
