//
//  ViewController.swift
//  FallColors
//
//  Created by Prinaya Choubey on 9/26/20.
//  Copyright © 2020 Prinaya Choubey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    @IBOutlet weak var Box1: UIView!
    
    @IBOutlet weak var Box2: UIView!
    
    @IBOutlet weak var ScoreLabel: UILabel!
   
    @IBOutlet weak var Score_numberLabel: UILabel!
    
    @IBOutlet weak var step1: UILabel!
    
    @IBOutlet weak var step2: UILabel!
    var score = 0
   
   
    @IBOutlet weak var InstructionLabel: UILabel!
    var model = FallColors()
    override func viewDidLoad() {
        super.viewDidLoad()
    
        Box1.backgroundColor = UIColor.orange
        Box2.backgroundColor = UIColor.orange
        view.backgroundColor = UIColor.white
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap1))
        

        Box1.addGestureRecognizer(tapGesture)
        let tapGesture2 = UITapGestureRecognizer(target: self, action: #selector(handleTap2))
        Box2.addGestureRecognizer(tapGesture2)
        ScoreLabel.text = NSLocalizedString("ScoreLabel_str", comment: "ScoreLabel")
        step1.text = NSLocalizedString("Step1_str", comment: "Step 1" )
        step2.text = NSLocalizedString("Step2_str", comment: "Step 2")
        InstructionLabel.text = NSLocalizedString("Instruction_name", comment: "Instruction Name")
        
        Score_numberLabel.text = String(score)
        
        
       
    }
    @objc func handleTap1(){
        Box1.backgroundColor = model.randomColorGenerator()
        if Box1.backgroundColor == Box2.backgroundColor{
        score = score + 1
        }
        Score_numberLabel.text = String(score)
    }
    @objc func handleTap2(){
        Box2.backgroundColor = model.randomColorGenerator()
        if Box1.backgroundColor == Box2.backgroundColor{
             score = score + 1
             }
       
        Score_numberLabel.text = String(score)
    }
    
    @IBAction func onTap(_ sender: Any) {
        view.backgroundColor = model.randomColor()
        score = score - 1
        Score_numberLabel.text = String(score)
        
    
    }
 
    
}

