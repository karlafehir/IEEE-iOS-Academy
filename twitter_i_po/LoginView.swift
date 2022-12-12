//
//  LoginView.swift
//  twitter_i_po
//
//  Created by student on 10.12.2022..
//

import SwiftUI

struct LoginView: View {
    
    @Binding var username: String 
    @Binding var isPresented: Bool
    
    var body: some View {
        
        VStack{
            
            HStack{
                Image("crow")
                    .resizable()
                    .frame(width: 55, height: 55)
                    .clipShape(Circle())
                Text("Birdy")
                    .bold()
                    .font(.title)
                
            }
            
            Text("Username:")
            TextField("Username", text: $username)
                .multilineTextAlignment(.center)
                
            Button(action: {isPresented = false})
            {
                Text("Log in")
            }
        }
    }
}







struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(
            username: Binding.constant(""),
            isPresented: Binding.constant(true)
        )
    }
}
