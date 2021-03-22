//
//  kGradientColorSet.swift
//  kGradientColor
//
//  Created by iMac on 22/03/21.
//

import Foundation

public class kGradientColorSet {

public init() {}
public func printLog(){
    print("Hello world")
}

public func setSlider(slider:UISlider) {
    let tgl = CAGradientLayer()
    let frame = CGRect.init(x:0, y:0, width:slider.frame.size.width, height:5)
    tgl.frame = frame
    tgl.colors = [UIColor.blue.cgColor, UIColor.green.cgColor, UIColor.yellow.cgColor, UIColor.orange.cgColor, UIColor.red.cgColor]
    tgl.startPoint = CGPoint.init(x:0.0, y:0.5)
    tgl.endPoint = CGPoint.init(x:1.0, y:0.5)
    
    UIGraphicsBeginImageContextWithOptions(tgl.frame.size, tgl.isOpaque, 0.0);
    tgl.render(in: UIGraphicsGetCurrentContext()!)
    if let image = UIGraphicsGetImageFromCurrentImageContext() {
        UIGraphicsEndImageContext()
        image.resizableImage(withCapInsets: UIEdgeInsets.zero)
        slider.setMinimumTrackImage(image, for: .normal)
    }
}
public func setGradientBackground(colorTop: UIColor, colorBottom: UIColor, view: UIView) {
    let gradientLayer = CAGradientLayer()
    gradientLayer.colors = [colorBottom.cgColor, colorTop.cgColor]
    gradientLayer.startPoint = CGPoint(x: 0.5, y: 1.0)
    gradientLayer.endPoint = CGPoint(x: 0.5, y: 0.0)
    gradientLayer.locations = [0, 1]
    gradientLayer.frame = view.bounds
    
    view.layer.insertSublayer(gradientLayer, at: 0)
}
}
