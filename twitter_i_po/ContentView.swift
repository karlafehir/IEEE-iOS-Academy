//
//  ContentView.swift
//  twitter_i_po
//
//  Created by student on 06.12.2022..
//

import SwiftUI

struct ContentView: View {
    
    let tweets : [TweetModel] = [
         TweetModel (
             content: "Tweet 1",
             username: "username",
             date: Date(),
             image: "crow",
             isFavorite: true),
         TweetModel (
             content: "Tweet 2",
             username: "username",
             date: Date(),
             image: "crow",
             isFavorite: false
        )
        
    ]
    
    var body: some View { //computed property
        
        VStack { //lista view-ova
            
            
            HStack{
                Text("Tweet")
                    .bold()
                    .font(.title)
                Spacer()
                Button(action: {}){
                    Text("Login")
                }
            }
            
            List(tweets){ tweet in
                Tweet(tweet: tweet)
            }
            .listStyle(.plain)
        }
        .padding()
    }
}
/*

struct Bird {
        var greeeting = "Chrip!"
    var  greeing: String { //computed property
        return "Chirp!"
    }
    func greet(){
        print("Tweet")
    }
}

func Test(){
    var greeting = "Hello!"
    greeting = "Tweet!"
    let bird = Bird()
    bird.greet()
    bird.greeeting //poziva l26 - computed property
}
*/



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

