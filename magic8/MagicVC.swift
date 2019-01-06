//
//  ViewController.swift
//  magic8
//
//  Created by tarek bahie on 1/6/19.
//  Copyright © 2019 tarek bahie. All rights reserved.
//

import UIKit

class MagicVC: UIViewController {
    @IBOutlet weak var ballLbl: UIImageView!
    
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func askBtnPressed(_ sender: Any) {
        updateBall()
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateBall()
    }
    func updateBall(){
        let index1 = Int.random(in: 0...4)
        ballLbl.image = UIImage(named: ballArray[index1])
        
        
    }
}

