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
