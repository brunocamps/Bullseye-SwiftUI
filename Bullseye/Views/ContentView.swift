//
//  ContentView.swift
//  Bullseye
//
//  Created by Bruno campos on 4/5/23.
//

import SwiftUI

struct ContentView: View {
  @State private var alertIsVisible = false
  @State private var sliderValue = 50.0
  @State private var game = Game(target: 43)

  

  var body: some View {
      
      ZStack {
          Color("BackgroundColor")
              .ignoresSafeArea()
          VStack {
            Text("🎯🎯🎯\nPut the Bullseye as close as you can to.".uppercased())
            .bold()
            .multilineTextAlignment(.center)
            .lineSpacing(4.0)
            .font(.footnote)
            .kerning(2.0)
            .padding(.horizontal, 30)
          Text(String(game.target))
                .kerning(-1)
                .font(.largeTitle)
                .fontWeight(.black)
          HStack {
            Text("1")
                .bold()
            Slider(value: $sliderValue, in: 1.0...100.0)
              Text("100")
                .bold()
          }
          .padding()
            Button("Hit Me".uppercased()) {
            alertIsVisible = true
          }
          .padding(20.0)
          .background(
            ZStack {
                Color("ButtonColor")
                LinearGradient(
                    gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]),
                    startPoint: .top, endPoint: .bottom)
            }
          )
          .foregroundColor(.white)
          .cornerRadius(21)
          .bold()
          .font(.title3)
          .alert(
            "Hello there!", isPresented: $alertIsVisible, actions: {
            Button("Awesome") {
              print("Alert closed")
            }
          }, message: {
            let roundedValue = Int(sliderValue.rounded())
            Text("""
              The slider's value is \(sliderValue), and rounded value is \(roundedValue).
              You scored \(game.points(sliderValue: roundedValue)) points this round.
            """)
          })

          }
      }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
