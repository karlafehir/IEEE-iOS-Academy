//
//  ProfileView.swift
//  twitter_i_po
//
//  Created by student on 12.12.2022..
//

import SwiftUI

struct ProfileView: View {
    
    
    @EnvironmentObject var tweetData: TweetData
    @EnvironmentObject var userData: UserData
    
        
    var userTweets: [TweetModel]{
        return tweetData.tweets.filter(){tweet in
            return tweet.username == userData.username
        }
    }
    
    
    var body: some View {
        
        VStack{
            HStack{
                Image(userData.image)
                    .resizable()
                    .frame(width: 55, height: 55)
                    .clipShape(Circle())
                Text(userData.username)
                    .font(.title)
            }
            
            List(userTweets){ tweetModel in
                Tweet(tweet: Binding.constant(tweetModel))
            }.listStyle(.plain)
        }.padding()
        
        
        
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .environmentObject(UserData())
            .environmentObject(TweetData())
    }
}
