//
//  ViewController.swift
//  ADKonSwift
//
//  Created by Jeff Lin on 6/18/16.
//  Copyright © 2016 Yahoo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setupView() -> Void {
        self.view.backgroundColor = UIColor.ADKColorWithHexString("0x1DB2E8")
    }
}

