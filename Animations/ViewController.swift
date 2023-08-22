//
//  ViewController.swift
//  Animations
//
//  Created by Enrique on 21/08/23.
//

import UIKit

class ViewController: UIViewController {
  /*  let myView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemGreen
        return view
    }()
    
    var centerYConstraint: NSLayoutConstraint?*/
    
    @IBOutlet weak var CenterYContraint: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*view.addSubview(myView)
        centerYConstraint = myView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        
        NSLayoutConstraint.activate([
            myView.heightAnchor.constraint(equalToConstant: 200),
            myView.widthAnchor.constraint(equalToConstant: 200),
            centerYConstraint!,
            myView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])*/
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1){
            self.animateConstraint()
        }
    }
    func animateConstraint() {
        UIView.animate(withDuration: 2) {
            self.CenterYContraint?.constant = -200
            self.view.layoutIfNeeded()
        }
    }
        
}
    

