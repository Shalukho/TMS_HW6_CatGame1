//
//  ViewController.swift
//  HW6_CatGame
//
//  Created by Анастасия Шалухо on 23.02.22.
//

// ДЗ_6. Игрушка для котиков - появление разноцветного кружочка, по тапу исчезает и появляется в новом месте (кодом)

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var catchMeButton: UIButton!
    
    let catToy = UIButton ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubViews()
    }
    
    private func setupSubViews() {
       
        let viewSize = self.view.bounds
        let superViewHeigth = viewSize.height
        let superViewWidth = viewSize.width
        
        catToy.frame = CGRect(x: superViewWidth / 2 - 30, y: superViewHeigth / 2 - 30, width: 60, height: 60)
        
        catToy.layer.cornerRadius = catToy.layer.frame.height / 2
        
        catToy.backgroundColor = UIColor.brown
        
        self.view.addSubview(catToy)
        
        catToy.addTarget(self, action: #selector(buttonTouched), for: .touchUpInside)
    }
    @objc private func buttonTouched(){
        let viewSize = self.view.bounds
        let superViewHeigth = viewSize.height
        let superViewWidth = viewSize.width
        let maxHeigth = Int(superViewHeigth) - 60
        let maxWidth = Int(superViewWidth) - 60
        
        catToy.frame = CGRect(x: Double(Int.random(in: 0...maxWidth)),
                              y: Double(Int.random(in: 0...maxHeigth)),
                              width: 60,
                              height: 60)
        print ("success")
    }
}

