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
    @State var score:Int = 0
    @State var answer:Int = 0
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            Spacer()
            Text("\(colorText)").font(.largeTitle).onReceive(timer) { value in
                answer = 0
                currentColor = Int.random(in: 1..<3)
                if currentColor == 1 {
                    colorText = "bleu"
                }else{
                    colorText = "violet"
                }
            }
            if(answer != 0){
                Text(answer == currentColor ? "Good job !" : "Sorry, try again !").font(.title)
            }
            Spacer()
            HStack {
                Spacer()
                Rectangle()
                    .frame(height: 100)
                    .frame(maxWidth: 350)
                    .foregroundColor(.blue)
                    .onTapGesture {
                        answer = 1
                        print("bleu")
                        if(answer == currentColor) {score = score + 1}
                    }
                Rectangle()
                    .frame(height: 100)
                    .frame(maxWidth: 350)
                    .foregroundColor(.purple)
                    .onTapGesture {
                        answer = 2
                        print("violet")
                        if(answer == currentColor) {score = score + 1}
                    }
                 Spacer()
            }
            Spacer()
            if(answer != 0) {
                Image(systemName: answer == currentColor ? "mouth" : "alternatingcurrent")
                    .imageScale(.large)
                    .font(.system(size: 68))
            }
            Spacer()
            Text("Your score \(score)")
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
