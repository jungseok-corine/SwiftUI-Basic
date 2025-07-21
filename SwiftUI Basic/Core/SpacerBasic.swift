//
//  SpacerBasic.swift
//  SwiftUI Basic
//
//  Created by 오정석 on 2/7/2025.
//

import SwiftUI

struct SpacerBasic: View {
    var body: some View {
        VStack {
            HStack(spacing: 0) {
                Image(systemName: "xmark")
                
                Spacer()
                
                Image(systemName: "gear")
            }
            .font(.title)
            .padding(.horizontal)
            
            Spacer()
            
            HStack(spacing: 0) {
                Spacer(minLength: 0)
                    .frame(height: 10)
                    .background(.orange)
                
                Rectangle()
                    .frame(width: 50, height: 50)
                
                Spacer(minLength: 0)
                    .frame(height: 10)
                    .background(.orange)
                
                Rectangle()
                    .fill(.red)
                    .frame(width: 50, height: 50)
                
                Spacer(minLength: 0)
                    .frame(height: 10)
                    .background(.orange)
                
                Rectangle()
                    .fill(.green)
                    .frame(width: 50, height: 50)
                
                Spacer(minLength: 0)
                    .frame(height: 10)
                    .background(.orange)
            }
            .background(.yellow)
            .padding(.leading, 20)
            .padding(.trailing, 20)
            
            Spacer()
        }
    }
}

#Preview {
    SpacerBasic()
}
