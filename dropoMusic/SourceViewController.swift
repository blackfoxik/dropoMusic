//
//  SourceViewController.swift
//  dropoMusic
//
//  Created by Anton on 12.12.17.
//  Copyright © 2017 Anton. All rights reserved.
//

import UIKit
import SwiftyDropbox

class SourceViewController: UIViewController {

    @IBAction func logInButtonPressed(_ sender: UIButton) {
        DropboxClientsManager.authorizeFromController(UIApplication.shared, controller: self, openURL: {(url: URL) -> Void in UIApplication.shared.openURL(url)})
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
