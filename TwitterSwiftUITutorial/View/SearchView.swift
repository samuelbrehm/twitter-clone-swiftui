//
//  SearchView.swift
//  TwitterSwiftUITutorial
//
//  Created by Samuel Brehm on 20/04/21.
//

import SwiftUI

struct SearchView: View {
    @State var searchText = ""
    @ObservedObject var viewModel = SearchViewModel()
    
    var body: some View {
        ScrollView {
            SearchBar(text: $searchText)

            VStack(alignment: .leading) {
                ForEach(viewModel.users) { user in
                    HStack { Spacer() }
                    
                    NavigationLink(
                        destination: UserProfileView(user: user),
                        label: {
                            UserCell(user: user)
                        })
                }
            }
            .padding(.leading)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
