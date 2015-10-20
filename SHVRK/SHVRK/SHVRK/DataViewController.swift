//
//  DataViewController.swift
//  SHVRK
//
//  Created by Monica on 10/20/15.
//  Copyright © 2015 Monica. All rights reserved.
//

import UIKit

class DataViewController: UIViewController {

    @IBOutlet var phoneNumber: UITextField!
    @IBOutlet weak var dataLabel: UILabel!
    var dataObject: String = "phoneNumber"


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.dataLabel!.text = dataObject
    }


}

