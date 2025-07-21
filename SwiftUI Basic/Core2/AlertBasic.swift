//
//  AlertBasic.swift
//  SwiftUI Basic
//
//  Created by 오정석 on 16/7/2025.
//

import SwiftUI

struct AlertBasic: View {
    @State var showAlert1: Bool = false
    @State var showAlert2: Bool = false
    @State var showAlert3: Bool = false
    @State var showAlert4: Bool = false
    
    @State var backgroundColor: Color = .yellow
    @State var alertTitle: String = ""
    @State var alertMessage: String = ""
    @State var alertType: AlertCase? = nil
    
    enum AlertCase {
        case success
        case error
    }

    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            VStack(spacing: 20) {
                // 1
                Button {
                    showAlert1.toggle()
                } label: {
                    Text("1번 Alert")
                }
                .alert(isPresented: $showAlert1) {
                    Alert(title: Text("패스워드 에러입니다. 다시 확인해주세요"))
                }
                
                // 2
                Button {
                    showAlert2.toggle()
                } label: {
                    Text("2번 Alert")
                }
                .alert(isPresented: $showAlert2) {
                    getAlert2()
                }
                
                // 3
                HStack(spacing: 10) {
                    Button {
                        showAlert3.toggle()
                        alertTitle = "영상 업로드 에러"
                        alertMessage = "영상이 제대로 올라가지 않았습니다. 다시 확인해주세요."
                    } label: {
                        Text("3번 Alert 실패시")
                    }

                    Button {
                        showAlert3.toggle()
                        alertTitle = "영상이 업로드 성공"
                        alertMessage = "영상이 제대로 올라갔습니다."
                    } label: {
                        Text("3번 Alert 성공시")
                    }
                } // Hstack
                .alert(isPresented: $showAlert3) {
                    getAlert3()
                }
                
                // 4
                HStack(spacing: 10) {
                    Button {
                        alertType = .error
                        showAlert4.toggle()
                        alertTitle = "영상 업로드 에러"
                        alertMessage = "영상이 제대로 올라가지 않았습니다. 다시 확인해주세요."
                    } label: {
                        Text("4번 Alert 실패시")
                    }

                    Button {
                        alertType = .success
                        showAlert4.toggle()
                        alertTitle = "영상이 업로드 성공"
                        alertMessage = "영상이 제대로 올라갔습니다."
                    } label: {
                        Text("4번 Alert 성공시")
                    }
                } // Hstack
                .alert(isPresented: $showAlert4) {
                    getAlert4()
                }

            } // Vstack
        } // Zstack
    }
    
    func getAlert2() -> Alert {
        return Alert(title: Text("메세지 삭제"),
                     message: Text("정말 메세지 삭제하시겠습니까?"),
                     primaryButton: .destructive(Text("Delete"), action: {
            backgroundColor = .red
        }),
                     secondaryButton: .cancel())
    }
    
    func getAlert3() -> Alert {
        return Alert(title: Text(alertTitle),
                     message: Text(alertMessage),
                     dismissButton: .default(Text("OK")))
    }
    
    func getAlert4() -> Alert {
        switch alertType {
        case .success:
            return Alert(title: Text("로그인에 성공했습니다."), dismissButton: .default(Text("OK"), action: {
                backgroundColor = .green
            }))
        case .error:
            return Alert(title: Text("에러 발생 다시 확인해보세요."), dismissButton: .default(Text("OK"), action: {
                backgroundColor = .red
            }))
        case nil:
            return Alert(title: Text("에러"))
        }
    }
}

#Preview {
    AlertBasic()
}
