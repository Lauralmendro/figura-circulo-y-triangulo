//
//  BoxView.swift
//  Examen1
//
//  Created by Jesús  on 26/11/18.
//  Copyright © 2018 Isabel Rodríguez Ruiz. All rights reserved.
//

import UIKit

class BoxView: UIView {
    
    
    @IBInspectable
    var color: UIColor = .red
    
    
    lazy var xmax = bounds.size.width
    lazy var ymax = bounds.size.height
    
    var escala: CGFloat = 0.5
    
    // Despite the inmutable nature of the sizes (more people argued about this problem in StackOverflow)
    
    override func draw(_ rect: CGRect) {
        
        let w = bounds.size.width
        let h = bounds.size.height
        let p1 = CGPoint(x:w/2, y:h/2*(1-CGFloat(escala)))
        let p2 = CGPoint(x:w/2*(1+CGFloat(escala)), y:h/2)
        let p3 = CGPoint(x:w/2, y:h/2*(1+CGFloat(escala)))
        let p4 = CGPoint(x:w/2*(1-CGFloat(escala)), y:h/2)
        
        let path = UIBezierPath()
        
        path.move(to: p1)
        path.addLine(to: p2)
        path.addLine(to: p3)
        path.addLine(to: p4)
        path.close()
        
        color.set()
        
        path.fill()

        
    }

}
