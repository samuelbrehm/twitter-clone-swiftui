//
//  ProfileHeaderView.swift
//  TwitterSwiftUITutorial
//
//  Created by Samuel Brehm on 29/04/21.
//

import SwiftUI
import Kingfisher

struct ProfileHeaderView: View {
    
    @Binding var isFollowed: Bool
    let viewModel: ProfileViewModel
    
    var body: some View {
        VStack {
            KFImage(URL(string: viewModel.user.profileImageUrl))
                .resizable()
                .scaledToFill()
                .clipShape(Circle())
                .frame(width: 120, height: 120)
                .shadow(color: .black, radius: 6, x: 0.0, y: 0.0)
            
            Text(viewModel.user.fullname)
                .font(.system(size: 16, weight: .semibold))
                .padding(.top, 8)
            
            Text("@\(viewModel.user.username)")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting")
                .font(.system(size: 14))
                .padding(.top, 8)
                .padding(.horizontal)
            
            HStack(spacing: 42) {
                VStack {
                    Text("12")
                        .font(.system(size: 16)).bold()
                    
                    Text("Followers")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
                
                VStack {
                    Text("12")
                        .font(.system(size: 16)).bold()
                    
                    Text("Followers")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
            }
            .padding()
            
            ProfileActionButtonView(viewModel: viewModel, isFollowed: $isFollowed)
            
            Spacer()
        }
    }
}
