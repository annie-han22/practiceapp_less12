//
//  ContentView.swift
//  practiceapp_less12
//
//  Created by annie han on 7/12/24.
//

import SwiftUI

struct ContentView: View {
    @State private var textTitle = "What is your password?"
    @State private var name = ""
    @State private var password = ""
    
    
    var body: some View {
        VStack {
            Text("What is your name")
            TextField("", text: $name)
                .multilineTextAlignment(.center)
                .border(Color.pink, width: 1)
            
            Text(textTitle)
            TextField("", text: $password)
                .multilineTextAlignment(.center)
                .border(Color.pink, width: 1)
            
            Button("Submit password") {
                if password == "1234" {
                    textTitle = "successful login, \(name)!"
                } else {
                    textTitle = "incorrect login."
                }
            }
            .buttonStyle(.borderedProminent)
            .tint(.pink)
            }

        }

    }

#Preview {
    ContentView()
}
