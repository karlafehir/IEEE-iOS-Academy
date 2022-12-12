//
//  ContentView.swift
//  twitter_i_po
//
//  Created by student on 06.12.2022..
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var tweetData: TweetData
    @EnvironmentObject var userData: UserData

    
    @State var content: String = ""
    @State var isLoginViewPresented = false
    
    var body: some View { //computed property
        
        VStack { //lista view-ova
            
            
            HStack{
                Text(userData.username.isEmpty ? "Tweet" : userData.username)
                    .bold()
                    .font(.title)
                Spacer()
                Button(action: {isLoginViewPresented = true}){
                    Text("Login")
                }
            }
            
            List($tweetData.tweets){ tweet in //kada je @state pišemo dolar
                Tweet(tweet: tweet)
            }
            .listStyle(.plain)
            
            HStack{
                
                TextField("Content", text: $content)
                
                Button(action: {
                    tweetData.tweets.append(TweetModel(
                        content: content,
                        username: "karla",
                        date: Date(),
                        image: "crow"))
                    content = ""
                })
                {
                    Text("New Tweet")
                }
                .buttonStyle(.borderedProminent)
                .disabled(content.isEmpty)
                
            
            }
        }
        .padding()
        .sheet(isPresented: $isLoginViewPresented) {
            LoginView(
                username: $userData.username,
                isPresented: $isLoginViewPresented)
        }
    }
}



/*
 
 <
 >
 
 */


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
    /*
    let greeting: String = "Chirp!"
   // var nameJon: (String, String) -> String = getFullName
    
    let name = "Marin"
    
    
    func performAction (array: [Int], action: (Int) -> Int){ //fja višeg reda - kao param prima fju
        for number in array{
            let newNumber = action(number)
            print(newNumber)
        }
    }
    
    performAction(array: [1,2,3], action:  { number in
        return number + 1
    })
    
    performAction(array: [1,2,3]) { number in //druga sintaksa za proslu fju
        return number + 1
    }*/
    
    /*
     2. termin
     {  //fisrt class fja
         return first + " " + last
     }
     
     "Marin" //String literal
     ["Marin", "Krešimir"] //Array literal
     
    {param1, param2 in //sintaksa literal fje - "funkcije bez imena, spremljena unutar varijable"
        return param1 + " " + param2
    }
    
*/
  
     
   /* 1. termin
    var greeting = "Hello!"
    greeting = "Tweet!"
    let bird = Bird()
    bird.greet()
    bird.greeeting //poziva l26 - computed property
    */
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(TweetData())
            .environmentObject(UserData())
    }
}

