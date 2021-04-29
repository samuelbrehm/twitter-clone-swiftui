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
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            NavigationLink(
                destination: ChatView(),
                isActive: $showChat,
                label: {}
            )
            
            ScrollView {
                VStack {
                    ForEach(0..<100) { _ in
                        NavigationLink(
                            destination: ChatView(),
                            label: {
                                ConversationCell()
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
                NewMessageView(show: $isShowingMessageView, startChat: $showChat)
            })
        }
    }
}

struct ConversationsView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationsView()
    }
}
