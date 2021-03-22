//
//  ViewController.swift
//  kGradientColor
//
//  Created by khushbu on 03/22/2021.
//  Copyright (c) 2021 khushbu. All rights reserved.
//

import UIKit
import kGradientColor

class ViewController: UIViewController {
    @IBOutlet var viewBg: UIView!
    let Select = kGradientColorSet()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnSelectClick(_ sender: Any) {
        Select.setGradientBackground(colorTop: .clear, colorBottom: .blue, view: viewBg)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

