//
//  Extensions.swift
//  Trivia Game
//
//  Created by Sumairah Rahman on 10/07/23.
//

import Foundation
import SwiftUI

extension Text{
    func lilacTitle() -> some View{
        self.font(.title)
            .fontWeight(.heavy)
            .foregroundColor(Color("AccentColor"))
    }
    
}
