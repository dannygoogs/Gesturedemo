//
//  ViewController.swift
//  Gesturedemo
//
//  Created by Daniel Gougler on 10/15/20.
//  Copyright © 2020 goog. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    
    }

    @IBAction func pangesture(_ sender: UIPanGestureRecognizer) {
        let translation = sender.translation(in: view)

        // 2
        guard let gestureView = sender.view else {
          return
        }

        gestureView.center = CGPoint(
          x: gestureView.center.x + translation.x,
          y: gestureView.center.y + translation.y
        )

        // 3
        sender.setTranslation(.zero, in: view)
    }
    
}

