//
//  HomeViewController.swift
//  assysted
//
//  Created by michaell on 1/26/16.
//  Copyright © 2016 azianmike. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        let runkeeperSwitch = DGRunkeeperSwitch(leftTitle: "Looking for assystant", rightTitle: "Looking for job")
        runkeeperSwitch.backgroundColor = UIColor(red: 229.0/255.0, green: 163.0/255.0, blue: 48.0/255.0, alpha: 1.0)
        runkeeperSwitch.selectedBackgroundColor = .whiteColor()
        runkeeperSwitch.titleColor = .whiteColor()
        runkeeperSwitch.selectedTitleColor = UIColor(red: 255.0/255.0, green: 196.0/255.0, blue: 92.0/255.0, alpha: 1.0)
        runkeeperSwitch.titleFont = UIFont(name: "HelveticaNeue-Medium", size: 13.0)
        runkeeperSwitch.frame = CGRect(x: 30.0, y: 40.0, width: 300.0, height: 30.0)
//        runkeeperSwitch.addTarget(self, action: Selector("switchValueDidChange:"), forControlEvents: .ValueChanged)
        
        self.navigationItem.titleView = runkeeperSwitch;
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated);
        
        self.navigationController!.navigationBarHidden = false;
        self.navigationItem.hidesBackButton = true;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
