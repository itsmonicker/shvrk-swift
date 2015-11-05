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
        
        let sender: String = "luke";
        let message: String = "hi there";
   
        //var urltext: String = "http://sites.bxmc.poly.edu/~lukedubois/teaching/testphp/shvrk.php?number="+phonenumber+"&sender="+sender+"&message="+message;
    

        var url: NSURL = NSURL(string: "http://sites.bxmc.poly.edu/~lukedubois/teaching/testphp/shvrk.php?number=9788061820&sender=luke&message=hi!")!
        var rqst:NSMutableURLRequest = NSMutableURLRequest(URL:url)
        
        NSURLConnection.sendAsynchronousRequest(rqst, queue: NSOperationQueue.mainQueue()) {
            (response, data, error) in
            print(response)
        }

        
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

