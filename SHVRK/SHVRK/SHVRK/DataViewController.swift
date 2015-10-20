//
//  DataViewController.swift
//  SHVRK
//
//  Created by Monica on 10/20/15.
//  Copyright © 2015 Monica. All rights reserved.
//

import UIKit

class DataViewController: UIViewController {

    @IBOutlet weak var dataLabel: UILabel!;
    let dataObject: String = "SHVRK";

    @IBOutlet weak var thepicture: UIImageView!;
    
    @IBOutlet var phoneNumber: UITextField!;
    @IBOutlet var genderfield: UITextField!;

    @IBAction func buttonwaspressed(sender: AnyObject) {
        print("i clicked the button!");
        let phonenumber: String = phoneNumber.text!;
        let gender: String = genderfield.text!;
        print("phone number is: " + phonenumber);
        print("gender is: " + gender);
        
        // insert crap here to talk to database and make a new user
        
    }
    override func viewDidLoad() {
        // this is the function that runs when it gets the view happening
        super.viewDidLoad();
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated);
        
        self.dataLabel!.text = dataObject;

        let image = UIImage(named: "shvrk-behance1.png");
        thepicture.image = image;

        
    }


}

