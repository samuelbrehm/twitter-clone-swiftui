//
//  MessageInputView.swift
//  TwitterSwiftUITutorial
//
//  Created by Samuel Brehm on 28/04/21.
//

import SwiftUI

struct MessageInputView: View {
    @Binding var messageText: String
    
    var action: () -> Void
    
    var body: some View {
        HStack {
            TextField("Message...", text: $messageText)
                .textFieldStyle(PlainTextFieldStyle())
                .frame(minHeight: 30)
            
            Button(action: action) {
                Text("Send")
            }
        }
    }
}
