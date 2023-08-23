//
//  ContentView.swift
//  I Lost My Phone
//
//  Created by Matt Keyzer on 8/21/23.
//

import SwiftUI

struct ContentView: View {
    var heading: some View{
        VStack{
            Text("Matt Keyzer")
        }
    }
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
