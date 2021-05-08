//
//  ChatView.swift
//  TwitterSwiftUITutorial
//
//  Created by Samuel Brehm on 28/04/21.
//

import SwiftUI

struct ChatView: View {
    let user: User
    @ObservedObject var viewModel: ChatViewModel
    @State var messageText: String = ""
    
    init(user: User) {
        self.user = user
        self.viewModel = ChatViewModel(user: user)
    }
    
    var body: some View {
        VStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 12) {
                    ForEach(viewModel.messages) { message in
                        MessageView(message: message)
                    }
                }
            }
            .padding(.top)
            
            Divider()
            
            MessageInputView(messageText: $messageText, action: sendMessage)
                .padding()            
        }
        .navigationTitle(user.username)
    }
    
    func sendMessage() {
        viewModel.sendMessages(messageText)
        messageText = ""
    }
}
