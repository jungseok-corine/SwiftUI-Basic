//
//  SheetBasic.swift
//  SwiftUI Basic
//
//  Created by 오정석 on 8/7/2025.
//

import SwiftUI

struct SheetBasic: View {
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding()
                    .background(.white)
                    .cornerRadius(10)
            }
            .sheet(isPresented: $showSheet) {
                SheetBasic2()
            }
//            .fullScreenCover(isPresented: $showSheet) {
//                SheetBasic2()
//            }
        }
    }
}

#Preview {
    SheetBasic()
}
