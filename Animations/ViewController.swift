//
//  ViewController.swift
//  Animations
//
//  Created by Enrique on 21/08/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myView.frame = CGRect (x: 0, y: 0, width: 0, height: 0)
        myView.alpha = 0.0
        myView.center = view.center
        
        UIView.animate(withDuration:2) {
            self.myView.frame = CGRect(x: 0, y: 0, width: 300, height: 300)
            self.myView.center = self.view.center
            self.myView.alpha = 1.0
            self.myView.layer.cornerRadius = 50
        }
        
    }
    
}
