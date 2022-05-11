//
//  test.swift
//  SwiftUI-HW1
//
//  Created by Михаил Светлов on 12.05.2022.
//

import SwiftUI

struct test: View {
    var body: some View {
        ZStack{
        Capsule()
            .foregroundColor(.cyan)
            .frame(width: 200, height: 100)
        Button(action: {}) {
            Text("test")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    
        }
    }
    }
}

struct test_Previews: PreviewProvider {
    static var previews: some View {
        test()
    }
}
