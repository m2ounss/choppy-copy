//
//  ContentView.swift
//  Shared
//
//  Created by Amaury Deneau on 18/03/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var userText = ""
    @State var textStyle = 1
    
    var body: some View {
        VStack(spacing:17) {
            Spacer()
            
            if textStyle == 1 {
                Text(userText.uppercased())
                    .font(.largeTitle)
            }
            if textStyle == 2 {
                Text(userText.capitalized)
                    .font(.largeTitle)
            }
            if textStyle == 3 {
                Text(userText.lowercased())
                    .font(.largeTitle)
            }
            
            Spacer()
            
            Button(action:{
                if textStyle == 1 {
                    UIPasteboard.general.string = userText.uppercased()
                }
                if textStyle == 2 {
                        UIPasteboard.general.string = userText.capitalized
                }
                if textStyle == 3 {
                            UIPasteboard.general.string = userText.lowercased()
                }
            }) {
                ButtonView(text: "copy", color: .green)
            }
            
            Picker(selection: $textStyle, label: Text("Picker")) {
                Text("CAPS").tag(1)
                Text("First letter").tag(2)
                Text("lowercase").tag(3)
            }
            .pickerStyle(.segmented)
            
            TextField("type here...", text: $userText)
        }
        
    }
}

