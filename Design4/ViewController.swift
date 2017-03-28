//
//  ViewController.swift
//  Design4
//
//  Created by Sebastian Strus on 2017-03-25.
//  Copyright © 2017 Sebastian Strus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var menuView: UIView!
    @IBOutlet weak var darkFillView: UIViewX!
    @IBOutlet weak var toggleMenuButton: UIButton!
    
    @IBOutlet weak var btn1: RoundButton!
    @IBOutlet weak var btn2: RoundButton!
    @IBOutlet weak var btn3: RoundButton!
    @IBOutlet weak var btn4: RoundButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btn1.alpha = 0
        btn2.alpha = 0
        btn3.alpha = 0
        btn4.alpha = 0
    }


    
    @IBAction func toggleMenu(_ sender: UIButton) {
        if darkFillView.transform == CGAffineTransform.identity { //or just .identity
            UIView.animate(withDuration: 1, animations: {
                self.darkFillView.transform = CGAffineTransform(scaleX: 11, y: 11)
                self.menuView.transform = CGAffineTransform(translationX: 0, y: -72)
                self.toggleMenuButton.transform = CGAffineTransform(rotationAngle: self.radians(180))
            }) { (true) in
                UIView.animate(withDuration: 0.5, animations: { 
                    self.toggleButtons()
                })
            }
        }
        else {
            UIView.animate(withDuration: 1, animations: {
                self.darkFillView.transform = .identity
                self.menuView.transform = .identity
                self.toggleMenuButton.transform = .identity
                self.toggleButtons()
            })
        }
    }
    
    func toggleButtons() {
        let alpha = CGFloat(btn1.alpha == 0 ? 1 : 0)
        btn1.alpha = alpha
        btn2.alpha = alpha
        btn3.alpha = alpha
        btn4.alpha = alpha
        
        
    }
    
    func radians(_ degrees: Double) -> CGFloat {
        return CGFloat(degrees * .pi / 180)
    }


}

