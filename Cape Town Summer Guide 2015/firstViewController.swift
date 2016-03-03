//
//  firstViewController.swift
//  Cape Town Summer Guide 2015
//
//  Created by Hugo Prinsloo on 2015/12/12.
//  Copyright © 2015 Hugo Prinsloo. All rights reserved.
//

import UIKit

class firstViewController: UIViewController {
    
    private let kControlPointRatio: CGFloat = 0.6
    private let kControlPointPulledDistance: CGFloat = 80
    private let kExtendedEdgesOffset: CGFloat = 100
    
    func createPulledPath(point: CGPoint) -> UIBezierPath {
        let height = view.bounds.height
        
        let path = UIBezierPath()
        path.moveToPoint(CGPoint(x: 0, y: -kExtendedEdgesOffset))
        
        // add curve
        path.addCurveToPoint(point, controlPoint1: CGPoint(x: 0, y: point.y * kControlPointRatio), controlPoint2: CGPoint(x: point.x, y: point.y - kControlPointPulledDistance))
        
        path.addCurveToPoint(CGPoint(x: 0, y: height+kExtendedEdgesOffset), controlPoint1: CGPoint(x: point.x, y: point.y + kControlPointPulledDistance), controlPoint2: CGPoint(x: 0, y: point.y + (height - point.y) * (1-kControlPointRatio)))
        
        path.closePath()
        
        return path
    }
    
    
    
    let overlayView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(white: 0, alpha: 0.5)
        return view
        }()
    
    let drawerView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 0.9118, green: 0.9163, blue: 0.9532, alpha: 1.0)
        return view
        }()
    
    let shapeLayer: CAShapeLayer = {
        let layer = CAShapeLayer()
        return layer
        }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(overlayView)
        view.addSubview(drawerView)
        
        drawerView.layer.mask = shapeLayer
        
//        shapeLayer.path = createPulledPath(CGPoint(x: 50, y: 333)).CGPath
//        drawerView.layer.mask = shapeLayer
        
        let pan = UIPanGestureRecognizer(target: self, action: "handlePan:")
        view.addGestureRecognizer(pan)
        
        overlayView.alpha = 0
 

    }
    
    override func viewWillLayoutSubviews() {
        overlayView.frame = view.bounds
        drawerView.frame = view.bounds
    }
    
    func handlePan(pan: UIPanGestureRecognizer) {
        let location = pan.locationInView(view)
        
        switch pan.state {
        case .Began:
            shapeLayer.removeAllAnimations()
            fallthrough
        case .Changed:
            let point = CGPoint(x: location.x * 0.5, y: location.y)
            shapeLayer.path = createPulledPath(point).CGPath
            
        case .Ended:
            fallthrough
        case .Cancelled:
            let point = CGPoint(x: 0, y: location.y)
            animateShapeLayerToPath(createPulledPath(point).CGPath, duration: 0.2)
        default:
            ()
            
        }
    }

    
    func animateShapeLayerToPath(path: CGPathRef, duration: NSTimeInterval) {
        let animation = CABasicAnimation(keyPath: "path")
        animation.toValue = path
        animation.duration = duration
        animation.fillMode = kCAFillModeForwards
        animation.removedOnCompletion = false
        animation.timingFunction = CAMediaTimingFunction(controlPoints: 0.5, 1.8, 1, 1)
        shapeLayer.addAnimation(animation, forKey: "morph")
    }

}
