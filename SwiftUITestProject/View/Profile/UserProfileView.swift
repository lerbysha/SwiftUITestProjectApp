//
//  UserProfileView.swift
//  SwiftUITestProject
//
//  Created by user on 04.02.2022.
//

import SwiftUI

struct UserProfileView: View {
    let user: User
    @ObservedObject var viewModel: ProfileViewModel
    @State var selectedFilter: TweetFilterOptions = .tweets
    
    init(user: User) {
        self.user = user
        self.viewModel = ProfileViewModel(user: user)
    }
    
    var body: some View {
        ScrollView {
            VStack {
                ProfileHeaderView(viewModel: viewModel)
                    .padding()
                
                FilterButtonView(selectedOption: $selectedFilter)
                    .padding()
                
                ForEach(viewModel.tweets(forFilter: selectedFilter)) { tweet in
                    TweetCell(tweet: tweet)
                        .padding()
                }
            }
            .navigationTitle(user.username)
        }
    }
}
