//
//  ProfileActionButtonView.swift
//  TwitterSwiftUITutorial
//
//  Created by Samuel Brehm on 29/04/21.
//

import SwiftUI

struct ProfileActionButtonView: View {
    @ObservedObject var viewModel: ProfileViewModel
    
    var body: some View {
        if viewModel.user.isCurrentUser {
            Button(action: {}, label: {
                Text("Edit Profile")
                    .frame(width: 360, height: 40)
                    .background(Color.blue.cornerRadius(20))
                    .foregroundColor(.white)
            })
        } else {
            HStack {
                Button(action: {
                    viewModel.user.isFollowed ? viewModel.unfollow() : viewModel.follow()
                }, label: {
                    Text(viewModel.user.isFollowed ? "Following" : "Follow")
                        .frame(width: 180, height: 40)
                        .background(Color.blue.cornerRadius(20))
                        .foregroundColor(.white)
                })
                
                NavigationLink(destination: ChatView(user: viewModel.user)) {
                    Text("Message")
                        .frame(width: 180, height: 40)
                        .background(Color.purple.cornerRadius(20))
                        .foregroundColor(.white)
                }
            }
        }
        
    }
}

