//
//  ContentView.swift
//  SwiftUI-HW1
//
//  Created by Михаил Светлов on 11.05.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var greenOpacity = 0.2
    @State private var yellowOpacity = 0.2
    @State private var redOpacity = 0.2
    @State private var buttonText = "Start"
    @State private var status = 0
    
    private func actionScript() {
        buttonText = "Next"
        
        if status == 0 {
            greenOpacity = 1.0
            yellowOpacity = 0.2
            redOpacity = 0.2
            status = 1
        } else if status == 1 {
            greenOpacity = 0.2
            yellowOpacity = 1.0
            redOpacity = 0.2
            status = 2
        } else {
            greenOpacity = 0.2
            yellowOpacity = 0.2
            redOpacity = 1.0
            status = 0
    }
}
    
    
    var body: some View {
        ZStack {
            Color(white: 0)
                .foregroundColor(.black)
                .ignoresSafeArea()
            VStack {
                CircleView(color: .green, opacity: greenOpacity)
                    .padding(.bottom)
                CircleView(color: .yellow, opacity: yellowOpacity)
                    .padding(.bottom)
                CircleView(color: .red, opacity: redOpacity)
                Spacer()
                button
                }
            }
        }
    
    

    var button: some View {
        ZStack{
            Capsule()
                .foregroundColor(.white)
                .frame(width: 200, height: 100)
                .shadow(color: .white, radius: 10)
            Button(action: {actionScript()}) {
                Text(buttonText)
                    .font(.largeTitle)
                    .fontWeight(.bold)
            }
        }
        .padding(.bottom)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
