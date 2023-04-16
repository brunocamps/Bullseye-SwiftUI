//
//  Shapes.swift
//  Bullseye
//
//  Created by m1 on 16/04/2023.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
        VStack {
            Circle()
                //.fill(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/)
                //.inset(by: 10)
                .strokeBorder(Color.blue, lineWidth: 20)
                .frame(width: 200, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                .background(Color.green)
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .frame(width: 200, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
            Capsule()
                .fill(Color.blue)
                .frame(width: 200, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
            Ellipse()
                .fill(Color.blue)
                .frame(width: 200, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
        }
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
