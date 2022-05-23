//
//  KeyboardView.swift
//  wordle-swiftui
//
//  Created by Layne Moseley on 5/20/22.
//

import SwiftUI

let row1 = ["q", "w", "e", "r", "t", "y", "u", "i", "o", "p"]
let row2 = ["a", "s", "d", "f", "g", "h", "j", "k", "l"]
let row3 = ["ent", "z", "x", "c", "v", "b", "n", "m", "del"]

enum KeyboardKey {
    case enter, delete, letter(String)
}


struct KeyboardView: View {
    let onKeyPressed: (KeyboardKey) -> Void
    
    func keyPressed(_ content: String) {
        switch (content) {
        case "enter":
            onKeyPressed(.enter)
        case "delete":
            onKeyPressed(.delete)
        default:
            onKeyPressed(.letter(content))
        }
    }
    
    var body: some View {
        VStack(spacing: 5) {
            HStack(spacing: 5) {
                ForEach(row1.indices, id: \.self) { i in
                    KeyboardKeyView(content: row1[i]) { content in
                        keyPressed(content)
                    }
                }
            }
            HStack(spacing: 5) {
                ForEach(row2.indices, id: \.self) { i in
                    KeyboardKeyView(content: row2[i]) { content in
                        keyPressed(content)
                    }
                }
            }
            HStack(spacing: 5) {
                ForEach(row3.indices, id: \.self) { i in
                    KeyboardKeyView(content: row3[i]) { content in
                        keyPressed(content)
                    }
                }
            }
        }
        .padding(.horizontal, 2)
    }
}

struct KeyboardKeyView: View {
    let content: String
    let action: (String) -> ()
    
    var body: some View {
        Button(action: {
            action(content)
        }, label: {
            ZStack {
                Text(content)
            }
            .padding(10.0)
            .background(Color(white: 0.75))
            .cornerRadius(5.0)
        })
        .foregroundColor(.black)
        .minimumScaleFactor(0.1)
        .transition(.scale)
        .animation(.easeInOut, value: content)
    }
}

struct KeyboardView_Previews: PreviewProvider {
    static var previews: some View {
        KeyboardView() { _ in }
    }
}
