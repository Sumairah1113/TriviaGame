//
//  Answer.swift
//  Trivia Game
//
//  Created by Sumairah Rahman on 10/07/23.
//

import Foundation

struct Answer: Identifiable{
    var id = UUID()
    var text: AttributedString
    var isCorrect: Bool
}
