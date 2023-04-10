//
//  Game.swift
//  Bullseye
//
//  Created by Bruno campos on 4/6/23.
//

import Foundation

struct Game {
  var target: Int = Int.random(in: 1...100)
  var score = 0
  var round = 1.0

  func points(sliderValue: Int) -> Int {
    let difference: Int = abs(target - sliderValue)
//      if difference < 0 {
//          difference = difference * -1
//      }
      
      // Check the Swift Standard Library to see if there's a function there to help you do this with less amount of code
    
    let awardedPoints: Int = 100 - difference
    return awardedPoints

  } 
  
}
