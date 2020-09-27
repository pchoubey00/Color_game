//
//  FallColors.swift
//  FallColors
//
//  Created by Prinaya Choubey on 9/26/20.
//  Copyright © 2020 Prinaya Choubey. All rights reserved.
//

import Foundation
import UIKit

class FallColors{
let ColorDict = [1 : UIColor.red,
          2 : UIColor.green,
          3 : UIColor.blue,
          4 : UIColor.yellow,
          5 : UIColor.black,
          6 : UIColor.orange,
  7 : UIColor.purple,
  9 : UIColor.systemPink
  ]
  var score = 0
  
  
 func randomColorGenerator() -> UIColor{
     let randomNumber = Int.random(in: 1...9)
      var outputColor = UIColor.clear
      for (key, value) in ColorDict{
          if key == randomNumber{
              outputColor = value
          }
      }
      
      return outputColor
  }
    func randomfloat() -> CGFloat{
        return CGFloat(Float(arc4random())/Float(UINT32_MAX))
    }
    
    func randomColor() -> UIColor{
        return UIColor(red: randomfloat(), green: randomfloat(), blue: randomfloat(), alpha: 1.0)
    }
    

}


