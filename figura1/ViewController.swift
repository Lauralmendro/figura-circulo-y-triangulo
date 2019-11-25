//
//  ViewController.swift
//  figura1
//
//  Created by Jesús  on 24/11/2019.
//  Copyright © 2019 Isabel Rodríguez Ruiz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var controlSlider: UISlider!
    
    @IBOutlet weak var funcView1: BoxView!
    
    @IBOutlet weak var funcView2: BoxView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        controlSlider.sendActions(for: .valueChanged)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func updateBox(_ sender: UISlider) {
        let r = CGFloat(sender.value)
        funcView1.escala = r
        funcView2.escala = r
        funcView1.setNeedsDisplay()
        funcView2.setNeedsDisplay()
    }
    
}

