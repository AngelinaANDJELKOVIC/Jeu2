//
//  ContentView.swift
//  Jeux
//
//  Created by ANDJELKOVIC on 02/10/2023.
//

import SwiftUI

struct ContentView: View {
    @State var colorText:String = ""
    @State var currentColor:Int = 0
    
    var body: some View {
        VStack {
            Spacer()
            Text("Color")
            Spacer()
            HStack {
                Spacer()
                Rectangle()
                    .frame(height: 100)
                    .frame(maxWidth: 350)
                    .foregroundColor(.blue)
                    .onTapGesture {
                        print("bleu")
                    }
                Rectangle()
                    .frame(height: 100)
                    .frame(maxWidth: 350)
                    .foregroundColor(.purple)
                    .onTapGesture {
                        print("violet")
                    }
                 Spacer()
            }
            Spacer()
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
