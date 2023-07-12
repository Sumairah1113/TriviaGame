//
//  AnswerRow.swift
//  Trivia Game
//
//  Created by Sumairah Rahman on 10/07/23.
//

import SwiftUI

struct AnswerRow: View {
    @EnvironmentObject var triviaManager: TriviaManager
    var answer: Answer
    @State private var isSelected = false
    
    var red = Color(red: 0.71, green: 0.094, blue: 0.1)
    var green = Color(hue: 0.437, saturation: 0.717, brightness: 0.711)
    
    
    var body: some View {
        HStack(spacing:20){
            Image(systemName: "circle.fill")
                .font(.caption)
                
            Text(answer.text)
                .bold()
            if isSelected{
                Spacer()
                
                Image(systemName: answer.isCorrect ? "checkmark.circle.fill": "x.circle.fill")
                    .foregroundColor(answer.isCorrect ? green: red)
            }
            
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .foregroundColor(triviaManager.answerSelected ? (isSelected ? Color("AccentColor") : .gray) : Color("AccentColor"))
        .background(.white)
        .cornerRadius(10)
        .shadow(color: isSelected ? (answer.isCorrect ? green : red) : .gray, radius: 5, x: 0, y: 0.5)
        .onTapGesture {
            if !triviaManager.answerSelected{
                isSelected = true
                triviaManager.selectAnswer(answer: answer)
            }
        }
    }
}

struct AnswerRow_Previews: PreviewProvider {
    static var previews: some View {
        AnswerRow(answer: Answer(text: "Single", isCorrect: false))
            .environmentObject(TriviaManager())
    }
}
