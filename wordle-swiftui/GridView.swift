//
//  BoardView.swift
//  wordle-swiftui
//
//  Created by Layne Moseley on 5/20/22.
//

import SwiftUI

struct GridView: View {
    var body: some View {
        VStack {
            HStack {
                LetterBox()
                LetterBox()
                LetterBox()
                LetterBox()
                LetterBox()
            }
            HStack {
                LetterBox()
                LetterBox()
                LetterBox()
                LetterBox()
                LetterBox()
            }
            HStack {
                LetterBox()
                LetterBox()
                LetterBox()
                LetterBox()
                LetterBox()
            }
            HStack {
                LetterBox()
                LetterBox()
                LetterBox()
                LetterBox()
                LetterBox()
            }
            HStack {
                LetterBox()
                LetterBox()
                LetterBox()
                LetterBox()
                LetterBox()
            }
            HStack {
                LetterBox()
                LetterBox()
                LetterBox()
                LetterBox()
                LetterBox()
            }
        }
    }
}

struct LetterBox: View {
    var body: some View {
        Button("a") {
            print("ok")
        }
        .frame(minWidth: 50, minHeight: 50)
        .border(.gray, width: 2.0)
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}
