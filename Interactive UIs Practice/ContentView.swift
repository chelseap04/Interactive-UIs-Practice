//
//  ContentView.swift
//  Interactive UIs Practice
//
//  Created by Chelsea Poppleton on 4/14/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State private var value1 = ""
    @State private var value2 = ""
    @State private var presentAlert = false
    var body: some View {
        VStack {
           
            Text("What is your name?")
                .font(.title)
                .padding()
            
            TextField("Name", text: $value1)
                    .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
            
            Text("What is your birthday?")
                .font(.title)
                .padding()
            
            TextField("Birthday", text: $value2)
                .multilineTextAlignment(.center)
            .font(.title)
            .border(Color.gray, width: 1)
            
            Text(presentAlert ? "": "")
            
            Button("Submit!!") {
                presentAlert = true
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            .alert("Thanks!", isPresented: $presentAlert, actions: {})
            }
        
            }
       
        
        
    }

struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
