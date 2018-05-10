//
//  ViewController.swift
//  colorHex
//
//  Created by songzhou on 05/09/2018.
//  Copyright (c) 2018 songzhou. All rights reserved.
//

import UIKit
import ColorHex

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        self.view.backgroundColor = UIColor(hex: 0xfd9898)
//        self.view.backgroundColor = UIColor(hexString: "0xfd9898")
        self.view.backgroundColor = UIColor(hexString: "#fd9898")

        let objcView = ObjcView(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
        view.addSubview(objcView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

