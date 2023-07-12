//
//  QuestionView.swift
//  Trivia Game
//
//  Created by Sumairah Rahman on 10/07/23.
//

import SwiftUI

struct QuestionView: View {
    @EnvironmentObject var triviaManager: TriviaManager
    var body: some View {
        VStack(spacing: 40){
            HStack{
                Text("Trivia Game")
                    .lilacTitle()
                Spacer()
                Text("\(triviaManager.index + 1) out of \(triviaManager.length)")
                    .foregroundColor(Color("AccentColor"))
                    .fontWeight(.heavy)
            }
            
            ProgressBar(progress: triviaManager.progress)
            
            VStack(alignment: .leading, spacing: 20){
                Text(triviaManager.question)
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.gray)
                
                ForEach(triviaManager.answerChoices, id: \.id){
                    answer in
                    AnswerRow(answer: answer)
                        .environmentObject(triviaManager)
                }
            }
            Button {
                triviaManager.goToNextQuestion()
            } label: {
                PrimaryButton(text: "Next", background: triviaManager.answerSelected ? Color("AccentColor") : .gray)
            }
            .disabled(!triviaManager.answerSelected)
            
            Spacer()
            
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(.white))
        .navigationBarHidden(true)
        
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
            .environmentObject(TriviaManager())
    }
}
