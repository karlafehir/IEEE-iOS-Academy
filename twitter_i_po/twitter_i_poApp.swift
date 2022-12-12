//
//  twitter_i_poApp.swift
//  twitter_i_po
//
//  Created by student on 06.12.2022..
//

import SwiftUI

@main
struct twitter_i_poApp: App { // ovjde spremamo tweetdata - app je na vrhu stabla
    
    @StateObject var tweetData = TweetData() //stateobj - spoj observableobject(combine fw) i state(swiftui) notacije - tweetdata pretvori u stateobject svaki put kada se tweetdata azurira
    
    @StateObject var userData = UserData()
    
    
    
    
    
    var body: some Scene {
        WindowGroup {
            TabView{
                ContentView()
                    .tabItem{
                        Label("Feed", systemImage:"list.bullet.circle")
                    }
                SearchView()
                    .tabItem{
                        Label("Search", systemImage: "magnifyingglass.circle")
                    }
                ProfileView()
                    .tabItem{
                        Label("Profile", systemImage: "person.circle")
                    }
            }
            .environmentObject(tweetData) //svaki cvor/dijete u stablu ima ovaj environment
            .environmentObject(userData)
            
        }
    }
}
