//
//  ContentView.swift
//  wordle-swiftui
//
//  Created by Layne Moseley on 5/20/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HeaderView()
            Spacer()
            GridView()
            Spacer()
            KeyboardView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
