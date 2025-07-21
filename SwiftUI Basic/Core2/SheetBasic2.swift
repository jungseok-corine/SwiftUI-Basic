//
//  SheetBasic2.swift
//  SwiftUI Basic
//
//  Created by 오정석 on 8/7/2025.
//

import SwiftUI

struct SheetBasic2: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red.ignoresSafeArea()
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding()
            }
        }
    }
}


#Preview {
    SheetBasic2()
}
