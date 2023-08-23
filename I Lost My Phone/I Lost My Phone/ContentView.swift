//
//  ContentView.swift
//  I Lost My Phone
//
//  Created by Matt Keyzer on 8/21/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            HStack{
                Text("Congratulations!!!")
                    .font(.largeTitle)
                    .foregroundColor(Color.blue)
                    
            }.padding(.bottom, 3.0)
            HStack{
                Text("You have found Matt's Phone!!!")
                    .font(.title3)
            }
            Image("IMG_8227")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(/*@START_MENU_TOKEN@*/.bottom, 2.0/*@END_MENU_TOKEN@*/)
                
            HStack{
                Text("Contact Matt Keyzer:")
                    .padding(.bottom, 2.0)
            }
            HStack {
                Image(systemName: "phone.arrow.up.right.fill")
                    .imageScale(.large)
                .foregroundColor(.accentColor)
                Text("815-245-8084")
                    
            }.padding(/*@START_MENU_TOKEN@*/.bottom, 1.0/*@END_MENU_TOKEN@*/)
            HStack {
                Image(systemName: "paperplane.fill")
                    .imageScale(.large)
                    .foregroundColor(.blue)
                Text("mattk@keyzer.com")
                    
            }

            
            
                
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
