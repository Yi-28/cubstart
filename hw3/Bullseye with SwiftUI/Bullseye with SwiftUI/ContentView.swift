//
//  ContentView.swift
//  Bullseye with SwiftUI
//
//  Created by Tony Hong on 2/17/22.
//

import SwiftUI

struct ContentView: View {
    @State var num: Double = 25
    @State var toggle = false
    var body: some View {

            VStack() {
                HStack() {
                    VStack() {
                        Text("High Score")
                        Text("0")
                    }
                    .padding(.leading, 20)
                    
                    Spacer()
                    
                    VStack() {
                        Text("Current Level")
                        Text("1")
                    }
                }
                Spacer()
                
            
                VStack() {
                    Text("Move the slider to:")
                        .font(.system(size: 30))
                    
                    if toggle{
                        Text("\(num, specifier: "%.2f")").font(.system(size: 30))
                    } else {
                        Text(String(Int(num))).font(.system(size: 30))
                    }
                    
                    Slider(value: $num, in: 0...100).padding()
                    Button("Check"){
                        
                    }

                }
                Spacer()
                VStack() {
                    Text("Exact Mode?")
                    Toggle("Exact mode", isOn: $toggle).labelsHidden()
                }
            }

        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
