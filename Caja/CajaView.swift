//
//  CajaView.swift
//  Caja
//
//  Created by Xinxin Liu on 22/11/2019.
//  Copyright © 2019 Xinxin Liu. All rights reserved.
//

import UIKit

class CajaView: UIView {
    
    var length: CGFloat = 75
    var radius: CGFloat = 30
    var radius2: CGFloat = 50
    var angle: CGFloat = CGFloat(M_PI/12)
    
    override func draw(_ rect: CGRect) {
//      Cuadrado
        
        let path = UIBezierPath()

        let start = CGPoint(x: bounds.size.width/2 - (length/2),
                            y: bounds.size.height/4 - (length/2))
        
        path.move(to: start)
        
        path.addLine(to: CGPoint(x: start.x , y: start.y + length))
        path.addLine(to: CGPoint(x: start.x + length, y: start.y + length))
        path.addLine(to: CGPoint(x: start.x + length, y: start.y))
        path.close()
        
        UIColor.black.setStroke()
        UIColor.green.setFill()

        path.lineWidth = 2
        
        path.stroke()
        path.fill()
        
        path.move(to: center)
        
//      Circulo o pacman
        
        let path2 = UIBezierPath()

        let center = CGPoint(x: bounds.size.width/2, y: bounds.size.height/2)
        
        if angle == CGFloat(0) {
            path2.addArc(withCenter: center, radius: radius, startAngle: CGFloat(0), endAngle: CGFloat(2 * M_PI), clockwise: false)
        } else {
            path2.addArc(withCenter: center, radius: radius, startAngle: CGFloat(-angle), endAngle: CGFloat(angle), clockwise: false)
            path2.addLine(to: center)
            path2.close()
        }
        
        
        
        
        UIColor.yellow.setFill()
        
        path2.lineWidth = 2
        
        path2.stroke()
        path2.fill()
        
//      Triangulo
        
        let path3 = UIBezierPath()
        
        let center2 = CGPoint(x: bounds.size.width/2, y: bounds.size.height*3/4)

        let altura: CGFloat = CGFloat(radius2*3/2)
        
        let vertice =  CGPoint(x: center2.x, y: center2.y - radius2)

            
        path3.move(to: vertice)
        
        path3.addLine(to: CGPoint(x:vertice.x + radius2 * sin(.pi/3), y:vertice.y + altura))
        path3.addLine(to: CGPoint(x:vertice.x - radius2 * sin(.pi/3), y:vertice.y + altura))
        path3.close()
        
        UIColor.blue.setFill()
               
        path3.lineWidth = 2
               
        path3.stroke()
        path3.fill()
        
        
    }
}
