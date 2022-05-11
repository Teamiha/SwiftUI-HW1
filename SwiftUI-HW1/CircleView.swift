//
//  CircleView.swift
//  SwiftUI-HW1
//
//  Created by Михаил Светлов on 12.05.2022.
//

import SwiftUI


struct CircleView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .frame(width: 150.0, height: 150.0)
            .foregroundColor(color)
            .opacity(opacity)
            .overlay(Circle().stroke(Color.white, lineWidth: 2).opacity(opacity))
            .shadow(color: color, radius: 10)
            
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(color: .red, opacity: 0.5)
    }
}
