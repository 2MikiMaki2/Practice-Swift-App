//
//  TextAppendecizer.swift
//  Test App
//
//  Created by Maksim on 10/27/23.
//

import SwiftUI

struct TextAppendecizer: View {
    
    struct Word: Identifiable {
        let id = UUID()
        var value: String
    }
    
    struct userInput {
        var input: String = ""
        var wordList: [Word] = []
    }
    
    @State private var textInput: userInput = .init()
    
    var body: some View {
        VStack {
            List(textInput.wordList) { word in
                Text(word.value)
            }
            
            HStack {
                TextField("User Input", text: $textInput.input, prompt: Text("Please enter a word")).border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/).padding(.leading, 5)
                
                Spacer()
                
                Button("Submit") {
                    let word = Word(value: textInput.input)
                    textInput.wordList.append(word)
                }.padding(.trailing, 5)
            }.padding(.bottom, 50)
        }
    }
}

#Preview {
    TextAppendecizer()
}
