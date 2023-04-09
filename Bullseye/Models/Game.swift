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
    var difference: Int
    if sliderValue > target {
      difference = sliderValue - target
    } else if target > sliderValue {
      difference = target - sliderValue
    } else {
      // now the values must be equal, therefore the difference is zero
      difference = 0

    }

    let awardedPoints: Int = 100 - difference
    return awardedPoints

  } 
  
}
