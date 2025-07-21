//
//  ContextMenuBasic.swift
//  SwiftUI Basic
//
//  Created by 오정석 on 16/7/2025.
//

import SwiftUI

struct ContextMenuBasic: View {
    @State var statusText: String = ""
    @State var backgroundColor: Color = .cyan
    
    var body: some View {
        VStack(spacing: 30) {
            Text(statusText)
            VStack(alignment: .leading, spacing: 10) {
                Text("Context Menu Text")
                    .font(.headline)
                Text("이 버튼을 길게 누르면 메뉴가 나타납니다.")
                    .font(.subheadline)
            } // Vstack
            .foregroundColor(.white)
            .padding(30)
            .background(backgroundColor)
            .cornerRadius(20)
            .contextMenu {
                Button {
                    statusText = "공유가 되었습니다"
                    backgroundColor = .yellow
                } label: {
                    Label {
                        Text("Share Post")
                    } icon: {
                        Image(systemName: "square.and.arrow.up")
                    }
                }
                
                Button {
                    statusText = "신고가 되었습니다"
                    backgroundColor = .red
                } label: {
                    Label {
                        Text("Report Post")
                    } icon: {
                        Image(systemName: "exclamationmark.bubble")
                    }
                }
                
                Button {
                    statusText = "좋아요 추가"
                    backgroundColor = .green
                } label: {
                    Label {
                        Text("Like Post")
                    } icon: {
                        Image(systemName: "hand.thumbsup")
                    }
                }
            } // ContextMenu
        } // Vstack
    }
}

#Preview {
    ContextMenuBasic()
}
