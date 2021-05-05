//
//  UserProfileView.swift
//  TwitterSwiftUITutorial
//
//  Created by Samuel Brehm on 29/04/21.
//

import SwiftUI

struct UserProfileView: View {
    @State var selectedFilter: TweetFilterOptions = .tweets
    let user: User
    @ObservedObject var viewModel: ProfileViewModel
    
    init(user: User) {
        self.user = user
        self.viewModel = ProfileViewModel(user: user)
    }
    
    var body: some View {
        ScrollView {
            VStack {
                ProfileHeaderView(isFollowed: $viewModel.isFollowed, viewModel: viewModel)
                    .padding()
                
                FilterButtonView(selectedOptions: $selectedFilter)
                    .padding()
                
                ForEach(0..<9) { tweet in
                    TweetCell()
                        .padding(.horizontal, 32)
                }
            }
            
            .navigationTitle("Batman")
        }
    }
}
