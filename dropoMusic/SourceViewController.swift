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
    
    override func viewDidAppear(_ animated: Bool) {
        if let client = DropboxClientsManager.authorizedClient {
            
            // List contents of app folder
            _ = client.files.listFolder(path: "").response { response, error in
                if let result = response {
                    print("Folder contents:")
                    for entry in result.entries {
                        print(entry.name)
                    }
                }
                // Do any additional setup after loading the view.
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
    }
}
