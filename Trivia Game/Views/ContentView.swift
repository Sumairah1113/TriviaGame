//
//  ContentView.swift
//  Trivia Game
//
//  Created by Sumairah Rahman on 10/07/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var triviaManager = TriviaManager()
    var body: some View {
        NavigationView {
            VStack(spacing: 40){
                VStack(spacing: 20){
                    Text("Trivia Quiz")
                        .lilacTitle()
                
                    Text("Are You Ready?")
                        .foregroundColor(Color("AccentColor"))
                }
                
                NavigationLink{
                    TriviaView()
                        .environmentObject(triviaManager)
                }label:{
                    PrimaryButton(text:"Let's Go!")
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
            .background(Color(.white))
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
