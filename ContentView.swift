//
//  ContentView.swift
//  Jeux
//
//  Created by ANDJELKOVIC on 02/10/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Rectangle()
                    .frame(height: 100)
                    .frame(maxWidth: 350)
                    .foregroundColor(.blue)
                Rectangle()
                    .frame(height: 100)
                    .frame(maxWidth: 350)
                    .foregroundColor(.purple)
                Spacer()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
