//
//  ConversationCell.swift
//  SwiftUITestProject
//
//  Created by user on 04.02.2022.
//

import SwiftUI
import Kingfisher

struct ConversationCell: View {
    let message: Message
    
    var body: some View {
        VStack {
            HStack(spacing: 12) {
                KFImage(URL(string: message.user.profileImageUrl))
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 56, height: 56)
                    .cornerRadius(28)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text(message.user.fullname)
                        .font(.system(size: 14, weight: .semibold))
                    
                    Text(message.text)
                        .font(.system(size: 15))
                        .lineLimit(2)
                }
                //Required for the text to wrap properly
                //.frame(height: 64)
                .foregroundColor(.black)
                .padding(.trailing)
            }
            Divider()
        }
    }
}
