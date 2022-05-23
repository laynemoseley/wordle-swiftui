//
//  KeyboardView.swift
//  wordle-swiftui
//
//  Created by Layne Moseley on 5/20/22.
//

import SwiftUI

let row1 = ["q", "w", "e", "r", "t", "y", "u", "i", "o", "p"]
let row2 = ["a", "s", "d", "f", "g", "h", "j", "k", "l"]
let row3 = ["enter", "z", "x", "c", "v", "b", "n", "m", "delete"]

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
        VStack {
            HStack {
                ForEach(row1.indices, id: \.self) { i in
                    KeyboardKeyView(content: row1[i]) { content in
                        keyPressed(content)
                    }
                }
            }
            HStack {
                ForEach(row2.indices, id: \.self) { i in
                    KeyboardKeyView(content: row2[i]) { content in
                        keyPressed(content)
                    }
                }
            }
            HStack {
                ForEach(row3.indices, id: \.self) { i in
                    KeyboardKeyView(content: row3[i]) { content in
                        keyPressed(content)
                    }
                }
            }
        }
    }
}

struct KeyboardKeyView: View {
    let content: String
    let action: (String) -> ()
    
    var body: some View {
        Button(content) {
            action(content)
        }
    }
}

struct KeyboardView_Previews: PreviewProvider {
    static var previews: some View {
        KeyboardView() { _ in }
    }
}
