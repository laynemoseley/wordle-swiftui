//
//  ContentView.swift
//  wordle-swiftui
//
//  Created by Layne Moseley on 5/20/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { screen in
            VStack {
                HeaderView()
                Spacer()
                GridView()
                Spacer()
                KeyboardView { key in
                    switch (key) {
                    case .enter:
                        print("enter pressed")
                    case .delete:
                        print("delete pressed")
                    case .letter(let l):
                        print("letter pressed \(l)")
                    }
                }
                .frame(width: screen.size.width, height: screen.size.height * 0.33)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
