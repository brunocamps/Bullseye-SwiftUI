//
//  RoundedViews.swift
//  Bullseye
//
//  Created by m1 on 16/04/2023.
//

import SwiftUI

struct RoundedViewStroked: View {
    var systemName: String
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .frame(width: 56, height: 56)
            .overlay(
                Circle()
                    .strokeBorder(Color("ButtonStrokeColor"), lineWidth: 2)
            )
    }
}


struct RoundedImageViewFilled: View {
    var systemName: String
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("ButtonFilledTextColor"))
            .frame(width: 56, height: 56)
            .background(
                Circle().fill(Color("ButtonFilledBackgroundColor ")))
        
    }
}
struct PreviewView: View {
    var body: some View {
        VStack(spacing: 10) {
            RoundedImageViewFilled(systemName: "arrow.counterclockwise")
            RoundedViewStroked(systemName: "list.dash")
        }
    }
    
}

struct RoundedViews_Previews: PreviewProvider {
    static var previews: some View {
        PreviewView()
            .preferredColorScheme(.light)
    }
}
