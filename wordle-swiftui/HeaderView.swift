//
//  HeaderView.swift
//  wordle-swiftui
//
//  Created by Layne Moseley on 5/20/22.
//

import SwiftUI

struct HeaderView: View {
    
    @State var letter = "x"
    
    var body: some View {
        VStack {
            HStack {
                Image("hamburger")
                Image("question")
                Spacer()
                Text("Wordle")
                Spacer()
                Image("graph")
                Image("gear")
            }
            Rectangle()
                .frame(height: 1.0)
                .background(.gray)
        }
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
