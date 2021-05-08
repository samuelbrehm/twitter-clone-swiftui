//
//  ConversationsView.swift
//  TwitterSwiftUITutorial
//
//  Created by Samuel Brehm on 28/04/21.
//

import SwiftUI

struct ConversationsView: View {
    @State var isShowingMessageView = false
    @State var showChat = false
    @State var user: User?
    @ObservedObject var viewModel = ConversationsViewModel()
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            
            if let user = user {
                NavigationLink(
                    destination: LazyView(ChatView(user: user)),
                    isActive: $showChat,
                    label: {}
                )
            }
            
            ScrollView {
                VStack {
                    ForEach(viewModel.recentMessages) { message in
                        NavigationLink(
                            destination: LazyView(ChatView(user: message.user)),
                            label: {
                                ConversationCell(message: message)
                            })
                    }
                }
                .padding()
            }
            
            Button(action: {
                self.isShowingMessageView.toggle()
            }, label: {
                Image(systemName: "envelope")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding()
            })
            .background(Color.blue)
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
            .sheet(isPresented: $isShowingMessageView, content: {
                NewMessageView(show: $isShowingMessageView, startChat: $showChat, user: $user)
            })
        }
    }
}

struct ConversationsView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationsView()
    }
}
