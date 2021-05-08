//
//  NewMessageView.swift
//  TwitterSwiftUITutorial
//
//  Created by Samuel Brehm on 29/04/21.
//

import SwiftUI

struct NewMessageView: View {
    @State var searchText = ""
    @Binding var show: Bool
    @Binding var startChat: Bool
    @Binding var user: User?
    @ObservedObject var viewModel = SearchViewModel(config: .newMessage)
    
    var body: some View {
        ScrollView {
            SearchBar(text: $searchText)

            VStack(alignment: .leading) {
                ForEach(searchText.isEmpty ? viewModel.users : viewModel.filterusers(searchText)) { user in
                    HStack { Spacer() }
                    
                    Button(action: {
                        self.show.toggle()
                        self.startChat.toggle()
                        self.user = user
                    }, label: {
                        UserCell(user: user)
                    })
                }
            }
            .padding(.leading)
        }
    }
}
