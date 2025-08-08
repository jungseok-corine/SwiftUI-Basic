//
//  ActionSheetBasic.swift
//  SwiftUI Basic
//
//  Created by 오정석 on 21/7/2025.
//

import SwiftUI

struct ActionSheetBasic: View {
    @State var showActionSheet: Bool = false
    @State var resultActionSheet: String = ""
    
    var body: some View {
        VStack {
            Text(resultActionSheet)
                .font(.largeTitle)
            Spacer()
            
            // Content
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                
                Text("Jacob ko")
                
                Spacer()
                Button {
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                }
            } // Hstack
            .padding(.horizontal)
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
            
            Spacer()
        } // Vstack

        .actionSheet(isPresented: $showActionSheet) {
            // action sheet 담기는 내용 ActionSheet Type
            getActionSheet()
        }
    }
    
    func getActionSheet() -> ActionSheet {
        let shareButton: ActionSheet.Button = .default(Text("공유하기")) {
            resultActionSheet = "공유 되었습니다."
        }
        
        let reportButton: ActionSheet.Button = .default(Text("신고하기")) {
            resultActionSheet = "신고 되었습니다."
        }
        
        let deleteButton: ActionSheet.Button = .destructive(Text("삭제")) {
            resultActionSheet = "삭제 되었습니다."
        }
        
        let cancelButton: ActionSheet.Button = .cancel()
        
        return ActionSheet(title: Text("Action Sheet 제목"),
                           message: Text("ActionSheet 내용"),
                           buttons: [shareButton, reportButton, deleteButton, cancelButton])
    }
}

#Preview {
    ActionSheetBasic()
}
