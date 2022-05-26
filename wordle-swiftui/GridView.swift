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
        }.padding(40.0)
    }
}

struct LetterBox: View {
    var body: some View {
        Rectangle()
            .fill(.white)
            .frame(minWidth: 50, minHeight: 50)
            .border(.gray, width: 2.0)
            .aspectRatio(1.0, contentMode: .fit)
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}
