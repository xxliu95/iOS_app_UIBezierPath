//
//  ViewController.swift
//  Caja
//
//  Created by Xinxin Liu on 22/11/2019.
//  Copyright © 2019 Xinxin Liu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cajaView: CajaView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sizeSlider(_ sender: UISlider) {
        cajaView.length = CGFloat(sender.value) * 150
        cajaView.setNeedsDisplay()
    }
    
    @IBAction func sizeSlider2(_ sender: UISlider) {
        cajaView.radius = CGFloat(sender.value) * 60
        cajaView.setNeedsDisplay()
    }
    
    @IBAction func sizeSlider3(_ sender: UISlider) {
        cajaView.radius2 = CGFloat(sender.value) * 100
        cajaView.setNeedsDisplay()
    }
    
    @IBAction func pacmanSlider(_ sender: UISlider) {
        cajaView.angle = CGFloat(sender.value) * CGFloat(M_PI/6)
        cajaView.setNeedsDisplay()
    }
}

